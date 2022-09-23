DISTS = asm.out c.out rust.out cpp.out

.PHONY: run
run: $(DISTS)
	/usr/bin/time --verbose ./asm.out
	/usr/bin/time --verbose ./c.out
	/usr/bin/time --verbose ./rust.out
	/usr/bin/time --verbose ./cpp.out

.PHONY: all
all: $(DISTS)

asm.out: src/main.s
	gcc $^ -no-pie -o $@

c.out: src/main.c
	gcc $^ -O2 -o $@

rust.out: src/main.rs
	rustc $^ -o $@

cpp.out: src/main.cpp
	g++ $^ -O2 -o $@

.PHONY: clean
clean:
	-rm $(DISTS)
