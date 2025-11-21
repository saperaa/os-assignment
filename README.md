# Assignment 2: Basic Forks and C Style Development

A collection of C programs demonstrating process management, fork operations, and the roles of the linker and loader in program execution. This project is part of Lab-5 from Alamein University's CSE233 Operating Systems course.

## Description

This project contains educational code examples that demonstrate fundamental operating systems concepts:

- **Process Creation**: Using `fork()` to create parent-child process relationships
- **Process Management**: Background processes, stopping, pausing, and resuming processes
- **Linker Role**: How multiple C source files are compiled and linked together
- **Loader Role**: How programs are loaded into memory and executed

These examples provide hands-on experience with Unix/Linux process management and help understand the compilation and execution pipeline in C programming.

## Features

- ✅ **Process Creation**: Demonstrates parent-child process relationships using `fork()`
- ✅ **Linker Example**: Shows how multiple C files (`file1.c` and `file2.c`) are linked together
- ✅ **Loader Example**: Simple program demonstrating program loading and execution
- ✅ **Comprehensive Explanations**: Detailed documentation in `explanations.txt`
- ✅ **Easy Build System**: Simple Makefile for compiling all programs

## Prerequisites

- GCC compiler (GNU Compiler Collection)
- Make utility
- Linux/Unix-like environment (or WSL on Windows)
- Basic understanding of C programming

## Installation

### Building the Project

To compile all programs at once:
```bash
make
```

To compile individual programs:
```bash
make process_creation    # Exercise 1: Fork example
make output_program      # Exercise 5: Linker example
make simple_program      # Exercise 6: Loader example
```

### Cleaning Up

To remove all compiled executables:
```bash
make clean
```

## Usage

### Exercise 1: Process Creation with fork()

**Run the program:**
```bash
./process_creation
```

**Expected Output:**
```
This is the parent process. PID: 12345
This is the child process. PID: 12346
```
*(Note: The order may vary as both processes run concurrently)*

**What it demonstrates:**
- How `fork()` creates a copy of the current process
- Parent process receives child's PID
- Child process receives 0 as return value
- Both processes execute concurrently

### Exercise 5: Role of the Linker

**Run the program:**
```bash
./output_program
```

**Expected Output:**
```
mohamed alaa!
```

**What it demonstrates:**
- How `file1.c` (contains `hello()` definition) and `file2.c` (contains `main()` that calls `hello()`) are linked together
- The linker resolves function references across multiple object files
- Compilation process: preprocessing → compilation → assembly → linking

**Compilation details:**
```bash
gcc file1.c file2.c -o output_program
```

### Exercise 6: Role of the Loader

**Run the program:**
```bash
./simple_program
```

**Expected Output:**
```
This is a simple program.
```

**What it demonstrates:**
- How the loader reads the executable from disk
- How programs are loaded into memory
- Memory layout setup (code, data, stack, heap)
- Dynamic library loading

**Check dependencies:**
```bash
ldd simple_program  # Shows required shared libraries
```

### Running All Programs

To compile and run all programs sequentially:
```bash
make run-all
```

## Project Structure

```
.
├── process_creation.c    # Exercise 1: Fork example - creates parent and child processes
├── file1.c              # Exercise 5: Contains hello() function definition
├── file2.c              # Exercise 5: Contains main() that calls hello()
├── simple_program.c     # Exercise 6: Simple program demonstrating loader
├── makefile             # Build configuration with multiple targets
├── explanations.txt     # Detailed explanations of all exercises and concepts
├── LICENSE              # MIT License
├── README.md            # This file
└── Screenshot*.png      # Visual demonstrations of program execution
```

## Exercises Covered

This project covers the following exercises from Lab-5:

1. **Exercise 1**: Using `fork()` in C - Process creation
   - Demonstrates basic fork operation
   - Shows parent-child process relationship
   - Displays process IDs

2. **Exercise 2**: Starting processes in background
   - Using `&` operator to run processes in background
   - Using `jobs` command to view background processes

3. **Exercise 3**: Stopping processes
   - Finding processes with `ps aux | grep`
   - Terminating processes with `kill <PID>`

4. **Exercise 4**: Pause and resume processes
   - Pausing with `kill -STOP <PID>`
   - Resuming with `kill -CONT <PID>`

5. **Exercise 5**: Role of the Linker
   - Multi-file compilation
   - Symbol resolution
   - Object file linking

6. **Exercise 6**: Role of the Loader
   - Program loading into memory
   - Dynamic library dependencies
   - Memory layout setup

## Detailed Explanations

For comprehensive explanations of each exercise, the linker, and the loader, please refer to [`explanations.txt`](explanations.txt). This file contains:

- Step-by-step explanations of each exercise
- How `fork()` works and its return values
- Process management commands
- Detailed explanation of the linker's role
- Detailed explanation of the loader's role
- Compilation pipeline overview

## Visual Demonstrations

Screenshots are included in this repository showing:
- Program execution outputs
- Process management demonstrations
- Terminal interactions

## Key Concepts Explained

### The Linker

The linker combines multiple object files (`.o` files) into a single executable. Its main jobs are:

1. **Symbol Resolution**: Finds where functions are defined and connects calls to definitions
2. **Relocation**: Fixes memory addresses and updates references
3. **Library Linking**: Links static libraries and sets up dynamic libraries
4. **Executable Creation**: Creates the final executable file in ELF format

### The Loader

The loader is part of the OS that prepares programs for execution. Its main jobs are:

1. **Loading**: Reads executable from disk and loads it into memory
2. **Dynamic Libraries**: Loads required shared libraries (`.so` files)
3. **Memory Setup**: Sets up virtual memory layout (code, data, stack, heap)
4. **Address Resolution**: Fixes addresses and sets entry point
5. **Program Start**: Sets up arguments and environment, then calls `main()`

## Troubleshooting

**Issue**: `fork failed!` message appears
- **Solution**: Check system resources. Fork may fail if system is out of memory or process limit is reached.

**Issue**: `make: command not found`
- **Solution**: Install make utility: `sudo apt-get install make` (Ubuntu/Debian) or `brew install make` (macOS)

**Issue**: Permission denied when running executables
- **Solution**: Make sure executables have execute permission: `chmod +x <executable_name>`

**Issue**: Programs don't compile
- **Solution**: Ensure GCC is installed: `gcc --version`. Install if needed: `sudo apt-get install gcc` (Ubuntu/Debian)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Author

**Alamein University - CSE233**

This is an academic assignment project for Operating Systems course.

## Contributing

This is an academic assignment project. Contributions are not expected, but if you find any issues or have suggestions for improvements, feel free to open an issue.

## Acknowledgments

- Alamein University CSE233 course materials
- Unix/Linux process management documentation
- GCC and GNU toolchain documentation

---

**Note**: This project is designed for educational purposes to understand operating systems concepts, particularly process management and the compilation/execution pipeline in C programming.
