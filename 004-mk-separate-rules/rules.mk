.depend: $(SRCS)
	#@rm -f $@
	@for f in $(SRCS); do \
		$(CC) $(CPPFLAGS) -MM -MF $@ $$f; \
	done


