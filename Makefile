# Compiler
CC = gcc

# Output file
TARGET = app

# Default rule
all: $(TARGET)

# How to build
$(TARGET): main.c
	$(CC) -o $(TARGET) main.c

# Clean build artifacts
clean:
	rm -f $(TARGET)
