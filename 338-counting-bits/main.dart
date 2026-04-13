void main() {
  print(Solution().countBits(5));
}

class Solution {
  List<int> countBits(int n) {
      List<int> result = [];
    for (int i = 0; i <= n; i++) {  // من 0 لـ n
      result.add(countOnes(i));
    }
    return result;
  }

  int countOnes(int num) {
    int count = 0;
    while (num > 0) {
      count += num % 2; // لو الباقي 1، زود العداد
      num = num ~/ 2; // شيل آخر bit
    }
    return count;
  }
}
