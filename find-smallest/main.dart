import 'dart:math';

void main (){
  print(findSmallestInt([324,578,-12,647,34346,12,95,-500]));
}

// int findSmallestInt(List<int> arr) {
//   List<int> small=[];
//   for (int i = 0 ; i < arr.length ; i ++){
//     if(small.isNotEmpty){
//       if(small.first < arr[i]){
//         continue ;
//       }else{
//         small = [arr[i]];
//       }
//     }else {
//       small = [arr[i]];
//     }
//   }
//   return small.first;
// }
int findSmallestInt(List<int> arr) {
  int min = arr[0];
  for (var number in arr) {
    if (number < min) {
      min = number;
    }
  }
  return min;
}
// int findSmallestInt(List<int> arr) => arr.reduce(min);
// int findSmallestInt(List<int> arr)=>(arr..sort())[0];
// int findSmallestInt(List<int> arr) => arr.reduce((a,b) => a<b?a:b);
