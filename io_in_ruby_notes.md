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
