main() {
  /// Previously you learned how to define a class. These classes are concrete
  /// classes. You can create an object of concrete classes, but you cannot
  /// create an object of abstract classes.
  ///
  ///
  /// Abstract classes are classes that cannot be initialized. It is used to
  /// define the behavior of a class that can be inherited by other classes.
  /// An abstract class is declared using the keyword abstract.
  NormalClass nm = new NormalClass();

  nm.abstractMethod("wisdom");
}

abstract class AbstractClass {
  int? age;
  // 1. This is an abstract class, it cannot be instantiated i.e, we can't
  // create an object from an abstract class.

  int abstractMethod(
      String f); // Example of an Abstract Class. Can also take in parameters.

  // 2. Abstract method can only exist in the Abstract class. you can't have the
  // 'abstractMethod()' in a normal Class.

  // 3. Abstract classes can have Abstract Methods, Normal Methods and Instance Variable as well.
  // 4. Abstract classes can be inherited 'extends' while an Interface can be implemented 'implements'

  void newFunction(int a, [int? b]) {
    print("${a} ${b ?? 213}");
  }
}

// Extending an Abstract Class.
class NormalClass extends AbstractClass {
  /**
   * 
   * 1. When inheriting an Abstract Class that has an abstract method, you also need to
   *     override the default implementation.
   * 
   * 2. 
   * 
  */

  int abstractMethod(String f) {
    print("This is an Abstract Method");
    return 10002;
  }
}

abstract class MyAbstractClass {
  int a();
}

class Name extends MyAbstractClass {
  int a() {
    return 3;
  }
}
