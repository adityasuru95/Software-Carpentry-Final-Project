class Person1 {
  String name;
  int age;

  void showOutput() {
    print("$name : $age");
  }
}

class Person2 {

  String name;
  int age;

  Person2(String name, [int age = 18]) {
    this.name = name;
    this.age = age;

  }

}

class elements {
  String name;
  double mass;
  double neigh;

  elements(this.name, [this.mass=20]);

  elements.last() {
    name = 'Guest';
    mass = 222.222;
  }

  void showOutput(x) {
    var neigh = this.mass + x;
    print(neigh);

  }
}

class X {
  final name;
  static const int age = 10;

  X(this.name);

  void showOutput() {
    print("My name is $name and my age is $age");
  }


}

void main() {
  
  // Basic info and syntax of classes
  Person1 p1 = Person1();
  p1.showOutput();

  p1.name = 'Aditya';
  p1.age = 24;
  p1.showOutput();

  // Constructor is same as the self method
  Person2 p2 = Person2('Aditya', 34);
  print(p2.age);

  // Shortcut constructor
  elements n2 = elements('nitrogen', 17);
  n2.showOutput(3);
  // Also in this [] is used to give the default value.
  // But what if there are 3 variables.
  // And the 1st and the third are provided.
  // How does the compiler know which of the 3 are given.
  // And which of the three need to be used "default"
  elements o2 = elements('Oxygen');
  o2.showOutput(2);

  // Named constructor
  elements c = elements.last();
  c.showOutput(3);

  // use of final. cannot be changed.
  // use of static. 
  // Basically the SCOPE !!! 
  X random = X('Aditya');
  random.showOutput();
  print(random.name);
  print(X.age);


}