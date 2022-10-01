Results with hard-coded strings:
```
/usr/bin/time --verbose ./c.out
	Maximum resident set size (kbytes): 1320
/usr/bin/time --verbose ./rust.out
	Maximum resident set size (kbytes): 2032
/usr/bin/time --verbose ./cpp.out
	Maximum resident set size (kbytes): 3580
```

binary sizes with hard-coded strings:
```
-rwxrwxr-x 1 chris chris    16000 Sep 23 13:08 c.out
-rwxrwxr-x 1 chris chris    17144 Sep 23 13:08 cpp.out
-rwxrwxr-x 1 chris chris 10724888 Sep 23 13:08 rust.out
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
