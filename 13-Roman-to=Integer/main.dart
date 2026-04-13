void main() {}

class Solution {
  int romanToInt(String s) {
    Map<String, int> romanMap = {
      'I': 1,
      'V': 5,
      'X': 10,
      'L': 50,
      'C': 100,
      'D': 500,
      'M': 1000,
    };
    int result = 0;
    for (int i = 0; i < s.length; i++) {
      final currentLetter = s[i];
      final int currentValue = romanMap[currentLetter]!;
      final nextLetter = i + 1 < s.length ? s[i + 1] : null;
      final int nextValue = nextLetter != null ? romanMap[nextLetter]! : 0;
      if (currentValue < nextValue) {
        result -= currentValue;
      } else {
        result += currentValue;
      }
    }
    return result;
  }
}
