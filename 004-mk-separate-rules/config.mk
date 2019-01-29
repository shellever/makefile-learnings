# variables
CC = gcc
CFLAGS = -Iadd -Isub
ARFLAGS = crv


# rules
%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $< 


