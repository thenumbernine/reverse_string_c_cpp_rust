DISTS = \
rust.hardcoded.out\
c.hardcoded.gcc.out\
cpp.hardcoded.gcc.out\
c.hardcoded.clang.out\
cpp.hardcoded.clang.out\
rust.withargs.out\
c.withargs.gcc.out\
cpp.withargs.gcc.out\
c.withargs.clang.out\
cpp.withargs.clang.out
#asm.hardcoded.out

#TIMEARGS = -F M
TIMEARGS = --verbose

.PHONY: run
run: $(DISTS)
	/usr/bin/time $(TIMEARGS) ./rust.hardcoded.out
	/usr/bin/time $(TIMEARGS) ./c.hardcoded.gcc.out
	/usr/bin/time $(TIMEARGS) ./cpp.hardcoded.gcc.out
	/usr/bin/time $(TIMEARGS) ./c.hardcoded.clang.out
	/usr/bin/time $(TIMEARGS) ./cpp.hardcoded.clang.out
	/usr/bin/time $(TIMEARGS) ./rust.withargs.out "Let's take LeetCode contest"
	/usr/bin/time $(TIMEARGS) ./c.withargs.gcc.out "Let's take LeetCode contest"
	/usr/bin/time $(TIMEARGS) ./cpp.withargs.gcc.out "Let's take LeetCode contest"
	/usr/bin/time $(TIMEARGS) ./c.withargs.clang.out "Let's take LeetCode contest"
	/usr/bin/time $(TIMEARGS) ./cpp.withargs.clang.out "Let's take LeetCode contest"
# /usr/bin/time $(TIMEARGS) ./asm.out

.PHONY: all
all: $(DISTS)

asm.hardcoded.out: src/main.s
	gcc $^ -no-pie -o $@

rust.hardcoded.out: src/main_hardcoded.rs
	rustc $^ -o $@

c.hardcoded.gcc.out: src/main.c
	gcc $^ -DTEST_HARDCODED -O3 -o $@

cpp.hardcoded.gcc.out: src/main.cpp
	g++ $^ -DTEST_HARDCODED -O3 -o $@

c.hardcoded.clang.out: src/main.c
	clang $^ -DTEST_HARDCODED -O3 -o $@

cpp.hardcoded.clang.out: src/main.cpp
	clang++ $^ -DTEST_HARDCODED -O3 -o $@

rust.withargs.out: src/main_withargs.rs
	rustc $^ -o $@

c.withargs.gcc.out: src/main.c
	gcc $^ -DTEST_WITH_ARGS -O2 -o $@

cpp.withargs.gcc.out: src/main.cpp
	g++ $^ -DTEST_WITH_ARGS -O2 -o $@

c.withargs.clang.out: src/main.c
	clang $^ -DTEST_WITH_ARGS -O2 -o $@

cpp.withargs.clang.out: src/main.cpp
	clang++ $^ -DTEST_WITH_ARGS -O2 -o $@

.PHONY: clean
clean:
	-rm $(DISTS)
