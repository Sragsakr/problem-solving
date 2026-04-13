void main() {
  print(Solution().hammingWeight(128));
}

class Solution {
  int hammingWeight(int n) {
    int count = 0;
    while (n > 0 ){
      int remaining = n % 2;
      n = n ~/ 2;
      if (remaining == 1) {
        count++;
      }

    }
    return count;
  }
}