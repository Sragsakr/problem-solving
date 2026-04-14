import 'models/stack_model.dart';

void main() {
 var stack = Stack<int>();
 stack.push(1);
 stack.push(2);
 stack.push(3);
 print(stack);
  print(stack.pop());
 print(stack);
 print(stack.top());
 print(stack.isEmpty());

}