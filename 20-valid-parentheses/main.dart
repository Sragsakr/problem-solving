import '../data-structure/models/stack_model.dart';

void main (){
  var solution = Solution();
  print(solution.isValid("()"));
  print(solution.isValid("()[]{}"));
  print(solution.isValid("(]"));
  print(solution.isValid("([)]"));
  print(solution.isValid("{[]}"));
}

class Solution {
  bool isValid(String s) {
    List<String> stack = [];

    Map<String, String> pairs = {
      ')': '(',
      '}': '{',
      ']': '[',
    };

    for (int i = 0; i < s.length; i++) {
      String char = s[i];

      // لو open bracket
      if (char == '(' || char == '{' || char == '[') {
        stack.add(char);
      } else {
        // لو close bracket
        if (stack.isEmpty) return false;

        String last = stack.removeLast();

        if (last != pairs[char]) {
          return false;
        }
      }
    }

    // لازم يكون فاضي في الآخر
    return stack.isEmpty;
  }
}