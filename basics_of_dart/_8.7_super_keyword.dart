/// Super is used to refer to the parent class. It is used to call the parent class’s properties and methods.
// Key Points To Remember:
//  - The super keyword is used to access the parent class members.
//  - The super keyword is used to call the method of the parent class.

class Car {
  int noOfSeats = 4;
}

class Tesla extends Car {
  int noOfSeats = 6;

  void display() {
    print("No of seats in Tesla: $noOfSeats");
    print("No of seats in Car: ${super.noOfSeats}");
  }
}

class Laptop {
  // Method
  void display() {
    print("Laptop display");
  }
}

class MacBook extends Laptop {
  // Method
  void display() {
    print("MacBook display");
    super.display();
  }
}

class MacBookPro extends MacBook {
  // Method
  void display() {
    print("MacBookPro display");
    super.display();
  }
}

void main() {
  var macbookpro = MacBookPro();
  macbookpro.display();

  /// The parent class in this case is the class that was directly inherited from.
}
