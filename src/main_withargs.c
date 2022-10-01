#include <stdio.h>
int main(int argc, char** argv) {
	char * s = argv[1];
	char *l = s, *r = s;
	while (*l) {
		for (; *r && *r != ' '; ++r);
		for (char * a = l, *b = r-1; a < b; a++, b--) {
			*a ^= *b;
			*b ^= *a;
			*a ^= *b;
		}
		l = ++r;
	}
	printf("%s\n", s);
}
