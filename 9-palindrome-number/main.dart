void main() {
bool result = Solution().isPalindrome(121);
print(result);
}
class Solution {
  bool isPalindrome1(int x) {
if(x.isNegative) return false;
// Note: We Will Not Convert To String
  final convertedX = x.toString();
  List<String> characters = convertedX.split('');
  /// reverse the list
  characters = characters.reversed.toList();
  final reversedX = characters.join('');
  return x.toString() == reversedX;

  }
  bool isPalindrome(int x) {
// edge cases
    if (x < 0) return false;
    if (x % 10 == 0 && x != 0) return false;

    int original = x;
    int reversed = 0;

    while (x > 0) {
      int digit = x % 10;        // خد آخر رقم
      reversed = reversed * 10 + digit;  // ضيفه للمعكوس
      x = x ~/ 10;              // شيل آخر رقم
    }

    return original == reversed;





  }
}