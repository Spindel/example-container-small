SUBDIRS = project


.PHONY: all clean $(SUBDIRS)

project/hello:
	# Generic build instruction
	cp hello.sh project/hello
	chmod +x project/hello

all clean: $(SUBDIRS)

clean: TARGETS = clean

$(SUBDIRS):
	$(MAKE) -C $@ $(or $(TARGETS),build publish)
