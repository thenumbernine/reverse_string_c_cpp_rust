struct Solution {
}

impl Solution {
	pub fn reverse_words(s: String) -> String {
		s
		.split_whitespace()
		.map(|w|w.chars().rev().collect::<String>())
		.collect::<Vec<_>>()
		.join(" ")
	}
}

fn main() {
	println!("{}", Solution::reverse_words(String::from("Let's take LeetCode contest")));
}
