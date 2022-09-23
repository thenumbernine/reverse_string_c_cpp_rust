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

int main() {
	cout << Solution::reverseWords("Let's take LeetCode contest") << endl;
}
