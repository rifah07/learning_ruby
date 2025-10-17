# Gems and Dependencies

Gems are Ruby packages—prewritten code others can use. If your project uses gems, it becomes **dependent** on them. For example:

```
require 'colorize'
puts 'Success!'.colorize(:green)

```


To use that gem, you need to install it first:

```
gem install colorize
```


## Managing Gems with Bundler

Bundler manages dependencies using two files: `Gemfile` and `Gemfile.lock`.

To set up Bundler:

```
bundle init
bundle add colorize
```


The `Gemfile` defines required gems and versions, while `Gemfile.lock` lists exact versions installed.

## Versioning Basics

Ruby uses **semantic versioning**:

- Major: Breaking changes
- Minor: New features
- Patch: Fixes

Example constraint:
```
gem 'colorize', '~> 1.1'
```

This allows all versions between 1.1.0 and 1.9.x.