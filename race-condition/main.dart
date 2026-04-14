import 'dart:async';
void main()async{
  // شغّل الاتنين مع بعض
  // await Future.wait([increment(), increment()]);
 await   increment();
 await   increment();

  print(counter); // المتوقع: 2 — الفعلي: 1 ❌
}
int counter = 0;

Future<void> increment() async {
  final current = counter;          // قرأ: 0
  await Future.delayed(Duration(milliseconds: 10));
  counter = current + 1;            // كتب: 1
}

