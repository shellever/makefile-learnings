# variables
CC = gcc
CFLAGS = -Iadd -Isub
ARFLAGS = crv

LIB := libadd.a

OBJS := add_float.o add_int.o


# default target
all: $(LIB)

$(LIB): $(OBJS)
	$(AR) $(ARFLAGS) $@ $(OBJS)


# objects
add_float.o: add_float.c add.h
add_int.o: add_int.c add.h
#
#
# rules
%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $< 


# phony targets
clean:
	rm -f $(OBJS)

distclean: clean
	rm -f $(LIB)

.PHONY: clean distclean


