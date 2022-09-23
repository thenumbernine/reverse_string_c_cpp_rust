#include <stdio.h>
int main() {
	char s[] = "Let's take LeetCode contest";
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
