Results with hard-coded strings:
```
/usr/bin/time --verbose ./rust.hardcoded.out
	Maximum resident set size (kbytes): 1984
/usr/bin/time --verbose ./c.hardcoded.gcc.out
	Maximum resident set size (kbytes): 1284
/usr/bin/time --verbose ./cpp.hardcoded.gcc.out
	Maximum resident set size (kbytes): 3488
/usr/bin/time --verbose ./c.hardcoded.clang.out
	Maximum resident set size (kbytes): 1284
/usr/bin/time --verbose ./cpp.hardcoded.clang.out
	Maximum resident set size (kbytes): 3488

/usr/bin/time --verbose ./rust.withargs.out "Let's take LeetCode contest"
	Maximum resident set size (kbytes): 2036
/usr/bin/time --verbose ./c.withargs.gcc.out "Let's take LeetCode contest"
	Maximum resident set size (kbytes): 1284
/usr/bin/time --verbose ./cpp.withargs.gcc.out "Let's take LeetCode contest"
	Maximum resident set size (kbytes): 3468
/usr/bin/time --verbose ./c.withargs.clang.out "Let's take LeetCode contest"
	Maximum resident set size (kbytes): 1280
/usr/bin/time --verbose ./cpp.withargs.clang.out "Let's take LeetCode contest"
	Maximum resident set size (kbytes): 3548
```

binary sizes with hard-coded strings:
```
-rwxrwxr-x 1 chris chris 3976080 Oct 29 02:20 rust.hardcoded.out
-rwxrwxr-x 1 chris chris   16000 Mar 12 10:11 c.hardcoded.gcc.out
-rwxrwxr-x 1 chris chris   17296 Mar 12 10:11 cpp.hardcoded.gcc.out
-rwxrwxr-x 1 chris chris   15992 Mar 12 10:17 c.hardcoded.clang.out
-rwxrwxr-x 1 chris chris   17256 Mar 12 10:17 cpp.hardcoded.clang.out

-rwxrwxr-x 1 chris chris 3995816 Oct 29 02:20 rust.withargs.out
-rwxrwxr-x 1 chris chris   15952 Mar 12 10:12 c.withargs.gcc.out
-rwxrwxr-x 1 chris chris   17120 Mar 12 10:12 cpp.withargs.gcc.out
-rwxrwxr-x 1 chris chris   15992 Mar 12 10:18 c.withargs.clang.out
-rwxrwxr-x 1 chris chris   17120 Mar 12 10:18 cpp.withargs.clang.out
```

Aux information:

C++ runtime so size
```
chris@chris-Aspire-ES1-572:~/Projects/cpp/reverse_string$ dpkg -L libstdc++-11-dev | grep ".so\>" | xargs ls -al
lrwxrwxrwx 1 root root 40 Mar 24  2022 /usr/lib/gcc/x86_64-linux-gnu/11/libstdc++.so -> ../../../x86_64-linux-gnu/libstdc++.so.6
chris@chris-Aspire-ES1-572:~/Projects/cpp/reverse_string$ ls -al /usr/lib/gcc/x86_64-linux-gnu/11/../../../x86_64-linux-gnu/libstdc++.so.6.0.30
-rw-r--r-- 1 root root 2252096 May 13 18:11 /usr/lib/gcc/x86_64-linux-gnu/11/../../../x86_64-linux-gnu/libstdc++.so.6.0.30
```

Rust runtime so size
```
chris@chris-Aspire-ES1-572:~/Projects/cpp/reverse_string$ dpkg -L libstd-rust-1.61 | grep "\.so\>" | xargs ls -al
-rw-r--r-- 1 root root 65401056 Sep 19 15:03 /usr/lib/x86_64-linux-gnu/librustc_driver-0a778e590b802558.so
-rw-r--r-- 1 root root  5720200 Sep 19 15:03 /usr/lib/x86_64-linux-gnu/libstd-a354822510b6c78e.so
-rw-r--r-- 1 root root  1084560 Sep 19 15:03 /usr/lib/x86_64-linux-gnu/libtest-e629b2e50666c685.so
```





