/// Constant Constructor:
/// This is a constructor that is used to create constant objects. A constant
/// object is an object whose value cannot be changed.
///
/// A Constant constructor is declared with the 'const' keyword.
///
/// Constant constructor is used to create an object whose value cannot be
/// changed. It improves the performance of the program.
///
/// Rules for Declaring Constant Constructors:
/// - All properties of the class must be declared using 'final' keyword.
/// - It does not have any body.
/// - Only class containing 'const' constructor is initialized using the 'const' keyword.

// class ConstantClass {
//   final String? name;
//   final int? age;
//   final String? phone;

//   const ConstantClass(this.name, this.age, this.phone);

//   String toString() {
//     return "${this.name} - ${this.age} - ${this.phone}";
//   }
// }

// void main() {

//   ConstantClass cons = ConstantClass('Wisdom', 23, '08057784796');
//   // cons.name = "sd"; // This won't work since i can't make changes to the object.
//   print(cons);
// }

class ConstantConstructor {
  final name;
  final age;
  final isMarried;

  const ConstantConstructor(this.name, this.age, this.isMarried);

  String toString() {
    return "${this.name} - ${this.age} - ${this.isMarried}";
  }

  void methodName() {
    print('------------------');
  }
}

void main() {
  ConstantConstructor c = ConstantConstructor('Wisdom', 23, true);
  c.methodName();
  print(c);
}
