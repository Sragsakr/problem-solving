void main(){

  // final solution=Solution();
  // final result=solution.longestCommonPrefix(["flower","flow","flight"]);
  // print(result);
}

class Solution {
  String longestCommonPrefix(List<String> strs) {
String prefix=strs[0];
for (int i = 1; i < strs.length; i++) {
 while(strs[i].indexOf(prefix) != 0){
   prefix = prefix.substring(0, prefix.length - 1);
   if(prefix.isEmpty) return "";
 } 
}
 return prefix;

  }
}