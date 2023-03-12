#include <stdio.h>
int main(int argc, char** argv) {
#if defined(TEST_HARDCODED)
	char s[] = "Let's take LeetCode contest";
#elif defined(TEST_WITH_ARGS)
	char * s = argv[1];
#else
#error need one of these defined
#endif
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
