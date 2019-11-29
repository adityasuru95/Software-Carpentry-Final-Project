class Num {
  int num = 10;
}

void main() {

  // Arithmetic operators
  int num = 4;
  int numPlusOne = num + 1;
  int numMinusOne = num -1;
  int numIntoTwo = num * 2;
  var numByTwo = num / 2;
  int numRem2 = num % 2;

  print("$numPlusOne, $numMinusOne, $numIntoTwo, $numByTwo, $numRem2");

  // Shortcut to arithmetic operators (Unary operators)
  num = 3;
  ++num;
  print(num);
  --num;
  print(num);
  num += 3;
  print(num);
  num -= 3;
  print(num);
  num *= 3;
  print(num);
  var div = 9.0;
  div /= 3.0;
  print(div);
  num %= 3;
  print(num);

  // relational operators

  if (num == 0) {
    print("I am zero");
  }

  if (num != 1) {
    print("I am not one");
  }

  if (num <= 1) {
    print("I am less than one");
  }

  if (num >= -1) {
    print("i am more than one");
  }

  if (num is int) {
    print("I am an integer");
  }

  if (num.runtimeType != String) {
    print("I am not a string");
  }

  // boolean operators

  if (num == 0 && num.runtimeType != String) {
    print("I am zero and not a string");
  }

  if (num != 0 || num.runtimeType != String) {
    print("I am not zero / I am not a string");
  }

  // Null Aware operator

  var n = Num();
  print(n.num);

  /// var m;
  /// print(m.num);

  var m;
  print(m?.num);
  print(m?.num ?? 2);

  int p;
  print(p??=10);

  // ternary operator

  int x = 100;
  var rem = x % 2 == 0 ? 'Even': 'Odd';
  print(rem);

  var test = (x is int) ? 'Int' : 'Not an int';
  print(test);


}
