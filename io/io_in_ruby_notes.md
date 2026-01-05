# IO in Ruby – Simple Notes

These are simplified notes based on the “IO in Ruby” article from thoughtbot.

---

## 1. What is I/O?

- I/O (Input/Output) is how a program communicates with the outside world: keyboard, screen, files, network, etc.
- Data is treated as a **stream** of bytes or characters flowing into or out of the program.

---

## 2. Unix view: everything is a file

- On Unix-like systems, devices (disk, terminal, etc.) are exposed as files under `/dev`.
- Each open I/O stream has a **file descriptor** (an integer: 0, 1, 2, …). 
- The OS provides three standard file descriptors: 
    - `0` – standard input (stdin)
    - `1` – standard output (stdout)
    - `2` – standard error (stderr)

Example layout (simplified):

$ tree /dev  

/dev  
├── fd  
│ ├── 0 # stdin  
│ ├── 1 # stdout  
│ └── 2 # stderr  
├── null  
└── tty  


- `/dev/stdin`, `/dev/stdout`, `/dev/stderr` are symlinks to these file descriptors. 

---

## 3. Ruby’s IO class and standard streams

- Ruby wraps low-level streams with the **IO** class.
- Constants for standard streams: 
    - `STDIN`
    - `STDOUT`
    - `STDERR`
- Global variables (pointing to those IO objects by default):
    - `$stdin`
    - `$stdout`
    - `$stderr`

### `puts` and `gets`

- `puts` is a shorthand for writing to `$stdout`.
    - Internally: `puts` ≈ `$stdout.puts`.
- `gets` is shorthand for reading from `$stdin`.
    - Internally: `gets` ≈ `$stdin.gets`.

### Read-only vs write-only

- `$stdin` is **read-only**. Trying to write to it raises `IOError`.
- `$stdout` and `$stderr` are **write-only**. Trying to read from them raises `IOError`.

---

## 4. Creating IO objects

### From an existing file descriptor

````
io = IO.new(1) # 1 = stdout  
io.puts "hello world" # writes to stdout  
````


- This creates an `IO` object that writes to the stream with descriptor 1 (stdout).

### Using `IO.sysopen` (files/devices)

```
fd = IO.sysopen('/dev/null', 'w+')  
dev_null = IO.new(fd)  

dev_null.puts 'hello' # goes to /dev/null, you see nothing  
dev_null.gets # => nil
dev_null.close  
```


- `IO.sysopen(path, mode)` returns a file descriptor for the given file/device. 
- `/dev/null` is the **null device**:
    - Writing to it discards data.
    - Reading from it returns `nil`.

### General pattern

1. Use `IO.sysopen` to get a file descriptor for a path. 
2. Wrap it with `IO.new(fd)`.
3. Read/write via IO methods.
4. Close the IO when done to flush buffers and free the descriptor. 

Attempting to use a closed stream raises `IOError`. 

---

## 5. Position, EOF, and rewind

Each IO object has a **cursor position** (offset in the stream).

### Reading and position

Example file:

``
Lorem ipsum
dolor    
sit amet...
``

Steps:
````
fd = IO.sysopen('/path/to/lorem.txt')
lorem = IO.new(fd)

lorem.gets # => "Lorem ipsum\n"
lorem.pos # => 12

lorem.gets # => "dolor\n"
lorem.gets # => "sit amet...\n"
lorem.pos # => 30
````


- Each `gets` reads a line and moves the cursor forward. 

### End of file (EOF)

If you try to read after the end:

````
lorem.gets # => nil
lorem.eof? # => true
````


- `gets` returns `nil` at EOF, and `eof?` returns true.

### Rewinding

Use `rewind` to go back to the start:
````
lorem.rewind
lorem.pos # => 0
````


- `rewind` resets the cursor to position 0, so you can read again from the beginning.

### Writing and overwriting

Given a file opened for read/write: 

````
fd = IO.sysopen('/path/to/test.txt', 'w+')
io = IO.new(fd)

io.puts 'hello world'
io.puts 'goodbye world'

io.gets # => nil (cursor is at end)
io.eof? # => true

io.rewind
io.gets # => "hello world\n"
````

If you move the cursor and write in the middle:

````
io.pos # => 12
io.puts 'middle'
io.rewind
io.read # => "hello world\nmiddle\n world\n"
````

- Writing in the middle **overwrites** existing bytes after the cursor.
- This happens because streams do not load the entire file into memory; they work at the current position only.

---

## 6. IO subclasses and IO-like types

### File

- `File` is a subclass of `IO`.
- It simplifies working with regular files and adds helpers like:
    - `File#size`
    - `File#chmod`
    - `File.path`

### Sockets

- Ruby socket classes (e.g. `TCPSocket`) ultimately inherit from `IO`.

Example: 

````
require 'socket'

socket = TCPSocket.new 'localhost', 3000
socket.puts 'GET "/"'
response_line = socket.gets

=> "HTTP/1.1 400 Bad Request \r\n"
````

- You can use familiar IO methods (`puts`, `gets`) to talk over the network.

### StringIO

- `StringIO` lets a **String** behave like an IO.

Example: 

````
string_io = StringIO.new('hello world')
string_io.gets # => "hello world"
string_io.puts 'goodby world'
string_io.rewind
string_io.read # => "hello worldgoodby world\n"
````


- `StringIO` does **not** inherit from `IO`, but it implements similar methods.
- Very useful in tests to simulate a file or stream in memory.

### Tempfile

- `Tempfile` manages temporary files and implements the same interface as `File`.
- It is not a subclass of `IO`, but it is **IO-like**, so it can be passed wherever an IO object is expected.

---

## 7. Using IO injection in command-line apps

Original version (hard to test because it prints directly):

````
class SystemTask
  def execute
    puts "preparing to execute"
    puts "starting first task"
    first_task
    puts "starting second task"
    second_task
    puts "execution complete"
  end
end
````

Improved version using dependency injection:
````
class SystemTask
    def initialize(io = $stdout)
        @io = io
    end

    def execute
        @io.puts "preparing to execute"
        @io.puts "starting first task"
        first_task
        @io.puts "starting second task"
        second_task
        @io.puts "execution complete"
    end
end
````


- In production, you can still do `SystemTask.new.execute` (defaults to `$stdout`).
- In tests, you can pass:
    - A **test double** that responds to `puts`.
    - A **StringIO** to capture and assert on output.
    - A stream to **`/dev/null`** if you do not care about output.

Example test using `StringIO`:

````
io = StringIO.new
system_task = SystemTask.new(io)
system_task.execute

io.rewind
io.read

=> "preparing to execute\nstarting first task\nstarting second task\nexecution complete\n"
````


---

## 8. IO-like adapters for APIs

Scenario: multiple APIs return reports in different ways (raw strings, CSV docs, downloadable files, etc.).

Solution: create an **adapter** per API that:

- Fetches the report.
- Normalizes/standardizes the data.
- Returns the result wrapped as an IO-like object (`File`, `Tempfile`, etc.).

Example structure: 
````
class API1Report
    def fetch
        # fetch report (CSV)
        # standardize it
        # return as a Tempfile
    end
end
    
class API2Report
    def fetch
        # fetch report
        # return as a File
    end
end
    
class Persistor
    def initialize(report)
        @report = report # IO-like object
    end
    
    def persist
        # read/process/persist the report from @report
    end
end
````


- Because the reports are all IO-like, `Persistor` does not care which API they came from.

---

## 9. Where to go next

- 4.4 BSD’s I/O overview (for deeper Unix I/O, file descriptors, devices).
- TTY system (how jobs, processes, and TTY device interact).
- Practice Ruby I/O with a sample repo and a chapter from “Read Ruby”.

---
