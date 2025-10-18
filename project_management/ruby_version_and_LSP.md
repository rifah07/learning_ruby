# Ruby Version and Ruby LSP in VSCode

Use `.ruby-version` to declare your project’s Ruby version. Example:

```
rbenv local 3.2.2
```


This helps tools and editors match the correct Ruby version automatically.

## Ruby LSP in VSCode

Once you have a proper `Gemfile` and `Gemfile.lock`, Ruby LSP and RuboCop integrate smoothly with VSCode, providing linting, autocomplete, and inline error checking.