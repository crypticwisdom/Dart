/// - Inheritance is the sharing of behaviour between 2 classes.
/// - It allows us to define a class that extends the functionality of another class.
/// - The 'extends' keyword is used for inheriting from a Parent class.
/// - The Child Class inherits the properties and methods of the Parent Class.
/// - Dart support single inheritance. i.e you cannot define a class that
/// inherits from more than a single class at once. 'class Car extends Toyota, Benz{}' --> not allowed.
/// class Toyota extends Car{} --> Allowed. # This is Single Inheritance.
///
/// - Whenever we use inheritance, it always creates a 'is-a' relation between
///  the parent and the child class like Student is-a Person, Toyota is a Car e.t.c.
///
/// ============= Syntax ================
/// class ParentClass {
///    Parent class code
/// }

/// class ChildClass extends ParentClass {
///  Child class code
/// }
/// =====================================
///
/// Terminology:
/// - Parent Class: The class whose properties and methods are inherited by
///   another class. It is also known as base-class or super-class.

/// - Child Class: The class that inherits the properties and methods of another
///  class. It is also known as derived class or sub class.
///
///
///
/// Types Of Inheritance In Dart
//  - Single Inheritance - In this type of inheritance, a class can inherit from
//   only one class. In Dart, we can only extend one class at a time.

//  - Multilevel Inheritance - In this type of inheritance, a class can inherit
//   from another class and that class can also inherit from another class.
//   In Dart, we can extend a class from another class which is already extended
//   from another class. (Extending a class that has already been extended).

//  - Hierarchical Inheritance - In this type of inheritance, parent class is
//    inherited by multiple subclasses. For example, the Car class can be
//    inherited by the Toyota class and Honda class.

//  - Multiple Inheritance - In this type of inheritance, a class can inherit
//    from multiple classes. Dart does not support multiple inheritance.
//    For e.g. Class Toyota extends Car, Vehicle {} is not allowed in Dart.

/// Key Points:
// - Inheritance is used to reuse the code.
// - Inheritance is a concept which is achieved by using the extends keyword.
// - Properties and methods of the super class can be accessed by the sub class.
// - Class Dog extends class Animal{} means Dog is sub class and Animal is super class.
// - The sub class can have its own properties and methods.

class A {}

class B extends A {} // Single Inheritance.

class C extends B {} // Multilevel Inheritance.

// ------- Hierarchical -------
class Pers {}

class Doc extends Pers {}

class Eng extends Pers {}
// ----------------------------

// --------------- Example --------------------
class Person {
  String? firstname;
  String? lastname;
  List<String>? namesInFamily;

  String info() {
    var foo = "This is $lastname $firstname";
    namesInFamily!.forEach((element) {
      print(element);
    });
    return foo;
  }
}

class Doctor extends Person {
  String? specialization;
  String? hospitalName;

  @override
  String info() {
    print("${super.firstname}");
    return super.info() +
        " $specialization and owner of '$hospitalName' International Hospital.";
  }
}

// super keyword is used to call the 'methods, properties and i think constructors' of the parent class.

void main() {
  Doctor doctor = new Doctor();
  doctor.firstname = "King-sley";
  doctor.lastname = "Nwachukwu";
  doctor.specialization = "Doctor";
  doctor.namesInFamily = [
    'Wisdom',
    'George',
    'Kingsley',
    'Kenneth',
    'Confidence',
    'Destiny'
  ];
  doctor.hospitalName = "Kinger";

  print(doctor.info());
}
