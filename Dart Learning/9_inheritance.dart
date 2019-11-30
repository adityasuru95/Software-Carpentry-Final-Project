class vehicle {
  String model;
  int year;

  vehicle(this.model, this.year) {
    print(this.model);
    print(this.year);
  }

  void showOutput() {
    print(model);
    print(year);
  }
}

class car extends vehicle {
  double price;

  car(String model,  int year, double this.price) : super(model, year); // the this.price is important.

  //@override
  void showOutput() {
    print(price);
  }
}



void main() {
  vehicle v1 = vehicle('truck', 2000);
  car fer = car('ferrari', 2012, 3.5);
  fer.showOutput();


  // override a superclass method... 
  // getters and setters
}