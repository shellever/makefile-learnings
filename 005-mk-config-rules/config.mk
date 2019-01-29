# variables
CC = gcc
AR = ar
CFLAGS = -Iadd -Isub
CPPFLAGS = -Iadd -Isub
ARFLAGS = crv


# rules
%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $< 


