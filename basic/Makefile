SOURCES=$(shell find . -name *.bas)
PROGRAMS=$(SOURCES:%.bas=%.prg)

%.prg: %.bas
	petcat -2 -o $@ $<

all: $(PROGRAMS)

clean:
	rm *.prg
