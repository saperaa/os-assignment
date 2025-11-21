CC = gcc

all: process_creation output_program simple_program

# Exercise 1: Using fork() in C
process_creation: process_creation.c
	$(CC) process_creation.c -o process_creation

# Exercise 5: Role of the Linker
output_program: file1.c file2.c
	$(CC) file1.c file2.c -o output_program

# Exercise 6: Role of the Loader
simple_program: simple_program.c
	$(CC) simple_program.c -o simple_program

# Run targets
run-process: process_creation
	./process_creation

run-linker: output_program
	./output_program

run-simple: simple_program
	./simple_program

run-all: all
	@echo "Running process_creation:"
	./process_creation
	@echo "\nRunning output_program (linker example):"
	./output_program
	@echo "\nRunning simple_program:"
	./simple_program

clean:
	rm -f process_creation output_program simple_program
	@echo "Cleaned compiled executables"


