# variables
#CC = gcc
#CFLAGS = -Iadd -Isub
#ARFLAGS = crv
#include ../Makefile.config
include ../config.mk

LIB := libsub.a

OBJS := sub_float.o sub_int.o
# used to rules.mk
SRCS := $(OBJS:.o=.c)


# default target
all: $(LIB)

$(LIB): $(OBJS)
	$(AR) $(ARFLAGS) $@ $(OBJS)


# objects
#sub_float.o: sub_float.c sub.h
#sub_int.o: sub_int.c sub.h
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


