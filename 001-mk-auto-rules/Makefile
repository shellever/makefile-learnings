# variables
CC = gcc
CFLAGS = -Iadd -Isub


# default target
all: main


# executable binary
main: main.o add/add_float.o add/add_int.o sub/sub_float.o sub/sub_int.o
	$(CC) $^ -o $@


# objects
main.o: main.c add/add.h sub/sub.h

add/add_float.o: add/add_float.c add/add.h

add/add_int.o: add/add_int.c add/add.h

sub/sub_float.o: sub/sub_float.c sub/sub.h

sub/sub_int.o: sub/sub_int.c sub/sub.h


# rules
%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $< 


# phony target
clean:
	rm -f *.o add/*.o sub/*.o

distclean: clean
	rm -f main

.PHONY: clean


