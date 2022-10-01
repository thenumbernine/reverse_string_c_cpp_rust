DISTS = \
c.hardcoded.out\
rust.hardcoded.out\
cpp.hardcoded.out\
c.withargs.out\
rust.withargs.out\
cpp.withargs.out
#asm.hardcoded.out

.PHONY: run
run: $(DISTS)
	/usr/bin/time --verbose ./c.hardcoded.out
	/usr/bin/time --verbose ./rust.hardcoded.out
	/usr/bin/time --verbose ./cpp.hardcoded.out
	/usr/bin/time --verbose ./c.withargs.out "Let's take LeetCode contest"
	/usr/bin/time --verbose ./rust.withargs.out "Let's take LeetCode contest"
	/usr/bin/time --verbose ./cpp.withargs.out "Let's take LeetCode contest"
# /usr/bin/time --verbose ./asm.out

.PHONY: all
all: $(DISTS)

asm.hardcoded.out: src/main.s
	gcc $^ -no-pie -o $@

c.hardcoded.out: src/main_hardcoded.c
	gcc $^ -O2 -o $@

rust.hardcoded.out: src/main_hardcoded.rs
	rustc $^ -o $@

cpp.hardcoded.out: src/main.cpp
	g++ $^ -DTEST_HARDCODED -O2 -o $@

c.withargs.out: src/main_withargs.c
	gcc $^ -O2 -o $@

rust.withargs.out: src/main_withargs.rs
	rustc $^ -o $@

cpp.withargs.out: src/main.cpp
	g++ $^ -DTEST_WITH_ARGS -O2 -o $@



.PHONY: clean
clean:
	-rm $(DISTS)
