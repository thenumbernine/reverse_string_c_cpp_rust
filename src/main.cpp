#include <string>
#include <algorithm>
#include <iostream>
using namespace std;

class Solution {
public:
	static string reverseWords(string s) {
		auto l = s.begin(), r = s.begin();
		while (l < s.end())
		{
			r = find(l, s.end(), ' ');
			reverse(l, r);
			l = ++r;
		}
		return s;
	}
};

int main(int argc, char** argv) {
#if defined(TEST_HARDCODED)
	cout << Solution::reverseWords("Let's take LeetCode contest") << endl;
#elif defined(TEST_WITH_ARGS)
	cout << Solution::reverseWords(argv[1]);
#else
#error need one of these defined
#endif
}
