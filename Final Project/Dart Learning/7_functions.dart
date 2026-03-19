// A function is an object of class function.
// Non returning functions
void showOutput(var toShow) {
  print(toShow);

}

// Basics of returning functions
dynamic square(var x) {
  return x*x;
}

// Arrow functions
// => is a fat arrow expression

int rem(var x, var y) => x % y; 

// Positional arguement vs named parameter
void positional (String name, int age) =>  print("my name is $name, my age is $age");

void named ({String name, int age}) => print("My name is $name, my age is $age");



void main() {
  var x = 3.14;
  dynamic square_x = square(x);
  showOutput(square_x);
  showOutput('ABC');

  showOutput(rem(1, 2));

  // Nameless / Anonymous function (lambda function in python)
  List nos = [1, 2, 3, 4];
  nos.forEach(showOutput);
  nos.forEach((item){
    print(item);
  });

  // Positional and named parameters
  positional('Aditya', 24);
  named(age: 100, name: 'Aditya');

  // How to mix named and positional.

  // Also, exception handling when only 2 parameters are given...
}

