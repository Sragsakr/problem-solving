import 'dart:math';

void main(){
  var foo = const [];
  final bar = const [];
  const baz = []; // Equivalent to `const []`
  // foo = [1];
  // bar = [1];
  // baz = [1];
  // final nameFinal = 'Bob'; // Without a type annotation
  // const nameConst = 'Bob'; // Without a type annotation
  // final String nickname = 'Bobby';
  // nameFinal = 'Alice';
  // nameConst = 'Alice';

}

printCount(bool weLikeToCount){
  int lineCount;

  if (weLikeToCount) {
    lineCount = Random().nextInt(100);
  } else {
    lineCount = 0;
  }

  print(lineCount);

}