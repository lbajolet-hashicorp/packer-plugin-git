# Git Packer Plugin

[![tests](https://github.com/ethanmdavidson/packer-plugin-git/actions/workflows/run-tests.yml/badge.svg)](https://github.com/ethanmdavidson/packer-plugin-git/actions/workflows/run-tests.yml)

A plugin for packer which provides access to git. Compatible with Packer >= 1.7.0

Under the hood, it uses [go-git](https://github.com/go-git/go-git).

## Usage

Add the plugin to your packer config:
```hcl
packer {
  required_plugins {
    git = {
      version = ">=v0.2.0"
      source  = "github.com/ethanmdavidson/git"
    }
  }
}
```

Add the data source:
```hcl
data "git-commit" "example" { }
```

Now you should have access to info about the commit:
```hcl
locals {
  hash = data.git-commit.example.hash
}
```

See docs for more detailed information.

## Development

The GNUmakefile has all the commands you need to work with this repo. 
The typical development flow looks something like this:

1) Make code changes, and add test cases for these changes.
2) Run `make generate` to recreate generated code.
2) Run `make dev` to build the plugin and install it locally.
3) Run `make testacc` to run the acceptance tests. If there are failures, go back to step 1.
4) If the acceptance tests pass: commit, push, and open a PR!

For local development, you will need to install:
- Packer >= 1.7
- Go >= 1.16
- Make

