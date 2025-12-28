# IO in Ruby – Simple Notes

These are simplified notes based on the “IO in Ruby” article from thoughtbot.

---

## 1. What is I/O?

- I/O (Input/Output) is how a program communicates with the outside world: keyboard, screen, files, network, etc. [page:1]
- Data is treated as a **stream** of bytes or characters flowing into or out of the program. [page:1]

---

## 2. Unix view: everything is a file

- On Unix-like systems, devices (disk, terminal, etc.) are exposed as files under `/dev`. [page:1]
- Each open I/O stream has a **file descriptor** (an integer: 0, 1, 2, …). [page:1]
- The OS provides three standard file descriptors: [page:1]
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


- `/dev/stdin`, `/dev/stdout`, `/dev/stderr` are symlinks to these file descriptors. [page:1]

---

## 3. Ruby’s IO class and standard streams

- Ruby wraps low-level streams with the **IO** class. [page:1]
- Constants for standard streams: [page:1]
    - `STDIN`
    - `STDOUT`
    - `STDERR`
- Global variables (pointing to those IO objects by default): [page:1]
    - `$stdin`
    - `$stdout`
    - `$stderr`

### `puts` and `gets`

- `puts` is a shorthand for writing to `$stdout`.
    - Internally: `puts` ≈ `$stdout.puts`. [page:1]
- `gets` is shorthand for reading from `$stdin`.
    - Internally: `gets` ≈ `$stdin.gets`. [page:1]

### Read-only vs write-only

- `$stdin` is **read-only**. Trying to write to it raises `IOError`. [page:1]
- `$stdout` and `$stderr` are **write-only**. Trying to read from them raises `IOError`. [page:1]

---

## 4. Creating IO objects

### From an existing file descriptor

io = IO.new(1) # 1 = stdout  
io.puts "hello world" # writes to stdout  


- This creates an `IO` object that writes to the stream with descriptor 1 (stdout). [page:1]

### Using `IO.sysopen` (files/devices)

```
fd = IO.sysopen('/dev/null', 'w+')  
dev_null = IO.new(fd)  

dev_null.puts 'hello' # goes to /dev/null, you see nothing  
dev_null.gets # => nil
dev_null.close  
```


- `IO.sysopen(path, mode)` returns a file descriptor for the given file/device. [page:1]
- `/dev/null` is the **null device**:
    - Writing to it discards data.
    - Reading from it returns `nil`. [page:1]

### General pattern

1. Use `IO.sysopen` to get a file descriptor for a path. [page:1]
2. Wrap it with `IO.new(fd)`. [page:1]
3. Read/write via IO methods.
4. Close the IO when done to flush buffers and free the descriptor. [page:1]

Attempting to use a closed stream raises `IOError`. [page:1]

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

Steps: [page:1]  

````
fd = IO.sysopen('/path/to/lorem.txt')
lorem = IO.new(fd)

lorem.gets # => "Lorem ipsum\n"
lorem.pos # => 12

lorem.gets # => "dolor\n"
lorem.gets # => "sit amet...\n"
lorem.pos # => 30
````


- Each `gets` reads a line and moves the cursor forward. [page:1]

### End of file (EOF)

If you try to read after the end:

````
lorem.gets # => nil
lorem.eof? # => true
````


- `gets` returns `nil` at EOF, and `eof?` returns true. [page:1]

### Rewinding

Use `rewind` to go back to the start:
````
lorem.rewind
lorem.pos # => 0
````


- `rewind` resets the cursor to position 0, so you can read again from the beginning. [page:1]

### Writing and overwriting

Given a file opened for read/write: [page:1]  

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

- Writing in the middle **overwrites** existing bytes after the cursor. [page:1]
- This happens because streams do not load the entire file into memory; they work at the current position only. [page:1]

---

## 6. IO subclasses and IO-like types

### File

- `File` is a subclass of `IO`. [page:1]
- It simplifies working with regular files and adds helpers like: [page:1]
    - `File#size`
    - `File#chmod`
    - `File.path`

### Sockets

- Ruby socket classes (e.g. `TCPSocket`) ultimately inherit from `IO`. [page:1]

Example: [page:1]  

````
require 'socket'

socket = TCPSocket.new 'localhost', 3000
socket.puts 'GET "/"'
response_line = socket.gets

=> "HTTP/1.1 400 Bad Request \r\n"
````

- You can use familiar IO methods (`puts`, `gets`) to talk over the network. [page:1]

### StringIO

- `StringIO` lets a **String** behave like an IO. [page:1]

Example: [page:1]  

````
string_io = StringIO.new('hello world')
string_io.gets # => "hello world"
string_io.puts 'goodby world'
string_io.rewind
string_io.read # => "hello worldgoodby world\n"
````


- `StringIO` does **not** inherit from `IO`, but it implements similar methods. [page:1]
- Very useful in tests to simulate a file or stream in memory. [page:1]

### Tempfile

- `Tempfile` manages temporary files and implements the same interface as `File`. [page:1]
- It is not a subclass of `IO`, but it is **IO-like**, so it can be passed wherever an IO object is expected. [page:1]

---

