# Ruby Project Management - Introduction

Learn how Ruby developers organize their codebases efficiently. Instead of putting everything inside one big file, Ruby projects are split into smaller files, making the code more modular, readable, and maintainable.

# Organizing Your Ruby Projects

Just like HTML stays separate from CSS and JavaScript, Ruby code is organized into multiple files for clarity and manageability. The general guideline is:

> Create one class per file and place all Ruby files inside a `lib` directory.

Here’s a sample folder layout:

```
my_project/  
├── lib/  
│   └── useful_script.rb  
```


---

## Working with Multiple Files

Ruby provides two core ways to include and use code from other files: `require_relative` and `require`.

### Using `require_relative`

`require_relative` loads files relative to the file where it is called. This makes it simpler to organize your own code across different files.

For example:

```
main.rb
require_relative 'lib/sort'

lib/sort.rb
require_relative 'sort/bubble_sort'
require_relative 'sort/bogo_sort'
require_relative 'sort/merge_sort'
```

### Using `require`

`require` is typically used for external libraries or gems and looks for files in Ruby's `$LOAD_PATH`.

Example:  
```
require 'csv' # Standard library gem  
require_relative 'lib/sort' # Your code  
```