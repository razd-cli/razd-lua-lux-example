# Lua Lux Example Project

A CLI application written in Lua to check if a string contains the word "hello".

## 🚀 Quick Start

### Installation and Running with Razd

```bash
# Install tools and run the project (single command)
razd
```

### Alternatively with mise

```bash
# Install tools
mise install

# Build the project
mise exec -- lx build

# Run the application
mise exec -- lx run -- "hello world"
```

## 📋 Available Razd Commands

| Command        | Description                                    |
| -------------- | ---------------------------------------------- |
| `razd`         | Full setup and run (default)                   |
| `razd install` | Install tools via mise and build the project   |
| `razd dev`     | Run the application with "hello world" example |
| `razd --list`  | Show all available tasks                       |

## 🛠 Tools

This project uses the following tools via [mise](https://mise.jdx.dev/):

- **task** — task runner for executing tasks
- **lua 5.4** — Lua interpreter
- **lux** — package manager for Lua ([vfox-plugin-lux](https://github.com/dealenx/vfox-plugin-lux))

## 📦 Application Usage

```bash
# Check if a string contains "hello"
mise exec -- lx run -- "hello world"
# [+] The string contains 'hello'!

mise exec -- lx run -- "goodbye"
# [-] The string does not contain 'hello'.

# With flags
mise exec -- lx run -- "HELLO" -v      # Verbose mode
mise exec -- lx run -- "Hello" -i      # Case-sensitive check
```

## 📁 Project Structure

```
.
├── Razdfile.yml      # Razd configuration (tasks and mise tools)
├── lux.toml          # Lux configuration (Lua dependencies)
├── mise.toml         # Auto-generated from Razdfile.yml
└── src/
    └── main.lua      # Application source code
```

## 🔗 Links

- [Razd CLI](https://github.com/razd-cli/razd) — universal task runner
- [mise](https://mise.jdx.dev/) — tool version manager
- [Lux](https://github.com/lumen-oss/lux) — package manager for Lua
