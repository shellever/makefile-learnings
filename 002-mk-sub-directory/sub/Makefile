# variables
CC = gcc
CFLAGS = -Iadd -Isub
ARFLAGS = crv

LIB := libsub.a

OBJS := sub_float.o sub_int.o


# default target
all: $(LIB)

$(LIB): $(OBJS)
	$(AR) $(ARFLAGS) $@ $(OBJS)


# objects
sub_float.o: sub_float.c sub.h
sub_int.o: sub_int.c sub.h
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


