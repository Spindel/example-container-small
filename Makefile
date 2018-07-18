SUBDIRS = project


.PHONY: all clean $(SUBDIRS) login

project/hello:
	# Replace this with a compile/build/other step
	install -T hello.sh project/hello

all clean: $(SUBDIRS)

clean: TARGETS = clean

$(SUBDIRS):
	$(MAKE) -C $@ $(or $(TARGETS),build publish)
