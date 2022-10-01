Results with hard-coded strings:
```
/usr/bin/time --verbose ./c.hardcoded.out
	Maximum resident set size (kbytes): 1320
/usr/bin/time --verbose ./rust.hardcoded.out
	Maximum resident set size (kbytes): 1968
/usr/bin/time --verbose ./cpp.hardcoded.out
	Maximum resident set size (kbytes): 3460
/usr/bin/time --verbose ./c.withargs.out "Let's take LeetCode contest"
	Maximum resident set size (kbytes): 1336
/usr/bin/time --verbose ./rust.withargs.out "Let's take LeetCode contest"
	Maximum resident set size (kbytes): 2144
/usr/bin/time --verbose ./cpp.withargs.out "Let's take LeetCode contest"
	Maximum resident set size (kbytes): 3592
```

binary sizes with hard-coded strings:
```
-rwxrwxr-x 1 chris chris    16016 Oct  1 16:54 c.hardcoded.out
-rwxrwxr-x 1 chris chris    15960 Oct  1 16:54 c.withargs.out
-rwxrwxr-x 1 chris chris    17144 Oct  1 16:52 cpp.hardcoded.out
-rwxrwxr-x 1 chris chris    17016 Oct  1 16:57 cpp.withargs.out
-rwxrwxr-x 1 chris chris 11306944 Oct  1 16:52 rust.hardcoded.out
-rwxrwxr-x 1 chris chris 11326720 Oct  1 16:58 rust.withargs.out
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
