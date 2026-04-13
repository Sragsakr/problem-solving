void main() {
  List<int> nums = [3, 2, 4];
  int target = 6;
  // print(Solution().twoSum(nums, target));
  print(Solution().twoSum(nums, target));
}

class Solution {
  // bad solution, time complexity is O(n^2)
  // List<int> twoSum(List<int> nums, int target) {
  //   for (int i = 0; i < nums.length; i++) {
  //     for (int j = i + 1; j < nums.length; j++) {
  //       if (nums[i] + nums[j] == target) {
  //         return [i, j];
  //       }
  //     }
  //   }
  //   return [];
  // }

  // better solution, time complexity is O(n)
  // List<int> twoSumHash(List<int> nums, int target) {
    // Map<int, int> map = {};
    // for (int i = 0; i < nums.length; i++) {
    //   map[nums[i]] = i;
    //   int complement = target - nums[i];
    //   if (map.containsKey(complement)) {
      
    //     return [map[complement]!, i];
    //   }
    // }
    // return [];
  // }
    List<int> twoSum(List<int> nums, int target) {
    Map<int, int> map = {};

    for (int i = 0; i < nums.length; i++) {
      
      int complement = target - nums[i];
      if (map.containsKey(complement) && map[complement] != i) {
        return [map[complement]!, i];
      }
      map[nums[i]] = i;
    }
    return [];
  } 
}

/// الفكره العامه ايه 
/// بتاع ال hash map هيكون فيها العناصر اللي هتشوفها في ال array و ال index هيكون فيها 
/// و بتاع ال complement هيكون فيها العنصر اللي هتشوفها في ال array و ال index هيكون فيها
/// و بتاع ال i هيكون فيها ال index هيكون فيها
/// و بتاع ال return هيكون فيها ال index هيكون فيها
/// و بتاع ال return هيكون فيها ال index هيكون فيها
