# variables
#CC = gcc
#CFLAGS = -Iadd -Isub
#ARFLAGS = crv
#include ../Makefile.config
include ../config.mk

LIB := libadd.a

OBJS := add_float.o add_int.o
# used to rules.mk
SRCS := $(OBJS:.o=.c)


# default target
all: $(LIB)

$(LIB): .depend $(OBJS)
	$(AR) $(ARFLAGS) $@ $(OBJS)


# objects
#add_float.o: add_float.c add.h
#add_int.o: add_int.c add.h
#include ../Makefile.rules
include ../rules.mk
sinclude .depend
#
#
# rules
#%.o: %.c
#	$(CC) $(CFLAGS) -c -o $@ $< 
#

# phony targets
clean:
	rm -f $(OBJS) .depend

distclean: clean
	rm -f $(LIB)

.PHONY: clean distclean


