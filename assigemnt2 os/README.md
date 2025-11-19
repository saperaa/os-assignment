# Assignment 2: Basic forks and C Style Development

A collection of C programs demonstrating process management, fork operations, and the roles of the linker and loader in program execution.

## Description

This project contains code examples from Lab-5 that demonstrate:
- Process creation using `fork()`
- Background process management
- Process control (stop/resume)
- How the linker combines multiple source files
- How the loader prepares programs for execution

## Features

- **Process Creation**: Demonstrates parent-child process relationships using `fork()`
- **Linker Example**: Shows how multiple C files are linked together
- **Loader Example**: Simple program demonstrating program loading

## Installation

### Prerequisites
- GCC compiler
- Make utility
- Linux/Unix-like environment (or WSL on Windows)

### Building

To compile all programs:
```bash
make
```

To compile individual programs:
```bash
make process_creation
make output_program
make simple_program
```

## Usage

### Running Programs

**Process Creation Example:**
```bash
./process_creation
```

**Linker Example (file1.c + file2.c):**
```bash
./output_program
```

**Simple Program Example:**
```bash
./simple_program
```

### Cleaning

To remove compiled executables:
```bash
make clean
```

## Project Structure

```
.
├── process_creation.c    # Fork example - creates parent and child processes
├── file1.c              # Contains hello() function definition
├── file2.c              # Contains main() that calls hello()
├── simple_program.c     # Simple program demonstrating loader
├── makefile             # Build configuration
├── explanations.txt     # Detailed explanations of all exercises
├── LICENSE              # MIT License
└── README.md            # This file
```

## Exercises Covered

1. **Exercise 1**: Using `fork()` in C - Process creation
2. **Exercise 2**: Starting processes in background
3. **Exercise 3**: Stopping processes
4. **Exercise 4**: Pause and resume processes
5. **Exercise 5**: Role of the Linker - Multiple file compilation
6. **Exercise 6**: Role of the Loader - Program loading

## Detailed Explanations

For detailed explanations of each exercise, the linker, and the loader, please refer to `explanations.txt`.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Author

Alamein University - CSE233

## Contributing

This is an academic assignment project. Contributions are not expected.

