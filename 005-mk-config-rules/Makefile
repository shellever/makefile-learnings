# variables
#CC = gcc
#CFLAGS = -Iadd -Isub
#include Makefile.config
include config.mk

OBJS := main.o
# used to rules.mk
SRCS := $(OBJS:.o=.c)

LIBS = add/libadd.a
LIBS += sub/libsub.a
.PHONY: $(LIBS)


# default target
all: main


# executable binary
#main: main.o add/add_float.o add/add_int.o sub/sub_float.o sub/sub_int.o
#main: main.o $(LIBS)
main: .depend $(OBJS) $(LIBS)
	$(CC) $(OBJS) $(LIBS) -o $@

$(LIBS):
	$(MAKE) -C $(dir $@)


# objects
#main.o: main.c add/add.h sub/sub.h
#
#add/add_float.o: add/add_float.c add/add.h
#
#add/add_int.o: add/add_int.c add/add.h
#
#sub/sub_float.o: sub/sub_float.c sub/sub.h
#
#sub/sub_int.o: sub/sub_int.c sub/sub.h
include rules.mk
sinclude .depend
#
#
# rules
#%.o: %.c
#	$(CC) $(CFLAGS) -c -o $@ $< 
#

# phony targets
clean:
	rm -f *.o add/*.o sub/*.o add/*.a sub/*.a add/.depend sub/.depend .depend

#clean:
#	find . -type f \
#		\( -name '*.o' -o -name '*.a' \) -print \
#		| xargs rm -f
#
distclean: clean
	rm -f main

.PHONY: clean distclean


