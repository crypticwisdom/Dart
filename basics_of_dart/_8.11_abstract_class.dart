import '_8.5_inheritance.dart';

/// Previously you learned how to define a class. These classes are concrete
/// classes. You can create an object of concrete classes, but you cannot
/// create an object of abstract classes.
///
///
/// - Abstract classes are classes that cannot be instantiated. It is used to
/// define the behavior of a class that can be inherited by other classes.
/// An abstract class is declared using the keyword abstract.
///
///
///  - Abstract Method is a method that is declared without an implementation.
///  It doesn't have a body.
///
///     abstract class ClassName {
//Body of abstract class
//        method1();
//        method2();
//       }
///

// 1. This is an abstract class, it cannot be instantiated.
abstract class Animal {
  String? name;

  Animal(this.name);

  String run(String f); // Abstract Method. Can also take in parameters.
  String walk();
  String talk();

  // 2. Abstract method can only exist in the Abstract class. you can't have the
  // 'abstractMethod();' in a normal Class.

  // 3. Abstract classes can have Abstract Methods, Normal Methods and Instance Variable as well.
  // 4. Abstract classes can be inherited 'extends' while an Interface can be implemented 'implements'

  void newFunction(int a, [int? b]) {
    print("${a} ${b ?? 213}");
  }
}

class Cat extends Animal {
  int? age;

  Cat(this.age, String name) : super(name); // Ab

  String run(String f) => 'Cat is running'; // Abstract method.

  String walk() => "Cat is walking"; // Abstract method.

  String talk() => "Cat is talking"; // Abstract method.
}


/// Key Points To Remember
//  - You can’t create an object of an abstract class.
//  - It can have both abstract and non-abstract methods.
//  - It is used to define the behavior of a class that other classes can inherit.
//  - Abstract method only has a signature and no implementation.

