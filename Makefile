.PHONY : test


test: config.mk
	$(MAKE) -C test test

config:
	rm -f config.mk
	$(MAKE) config.mk

config.mk:
	$(MAKE) -f Makefile.config

clean:
	$(MAKE) -C test clean
	rm -f config.mk
