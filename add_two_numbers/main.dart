 

 void main() {
  ListNode l1 = ListNode(2, ListNode(4, ListNode(3)));
  ListNode l2 = ListNode(5, ListNode(6, ListNode(4)));
  print(Solution().addTwoNumbers(l1, l2)?.val);
 }
 // Definition for singly-linked list.
   class ListNode {
   int val;
    ListNode? next;
    ListNode([this.val = 0, this.next]);
   }
 
class Solution {
ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    // dummy node عشان نبني الـ result عليه
    ListNode dummy = ListNode(0);
    ListNode current = dummy;
    int carry = 0;

    // فضل لحد ما الاتنين يخلصوا والـ carry يبقى 0
    while (l1 != null || l2 != null || carry != 0) {
      // لو الـ list خلصت، اعتبر قيمتها 0
      int val1 = l1?.val ?? 0;
      int val2 = l2?.val ?? 0;

      // الجمع
      int sum = val1 + val2 + carry;
      carry = sum ~/ 10; // اللي هيتنقل
      int digit = sum % 10; // اللي هيتحط

      // ضيف node جديدة في الـ result
      current.next = ListNode(digit);
      current = current.next!;

      // امشي للـ node الجاية
      l1 = l1?.next;
      l2 = l2?.next;
    }

    return dummy.next;
  }
}
