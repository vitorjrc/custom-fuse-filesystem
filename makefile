# the compiler: gcc for C program, define as g++ for C++
CC = /usr/bin/gcc

# compiler flags:
#  -g    adds debugging information to the executable file
#  -Wall turns on most, but not all, compiler warnings
CFLAGS = -D_FILE_OFFSET_BITS=64

# package flags:
PKGFLAGS = `pkg-config fuse3 --cflags --libs` 

# the build target executable:
TARGET = my_passthrough

all: $(TARGET)

$(TARGET): $(TARGET).c
	$(CC) $(TARGET).c $(PKGFLAGS) $(CFLAGS) -o $(TARGET)

clean:
	$(RM) $(TARGET)