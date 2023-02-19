main() {
// ------------- Interface -------------

/**
 * 
 * NOTE: There's no Interface in Dart Programming Language, we use our normal class to implement an Interface.
 * 
 * 1. 'implements' keyword is used to make an Interface.
 * 2. Interfaces are used to provide the user with the BluePrint of the class that
 *    any class should follow if its interfaces that class i.e if a class interfaces another 
 *    it should redefine each function present in the interfaced class in it's way.
 * Interface are nothing but a set of methods defined for an object.
 * 
 * 3. It is mandatory to implement all methods in the implementing class.
 * 4. You can implement multiple classes.
 * 
*/
}

class MyInterface {
  void run() {
    // code ...
  }

  int walk() {
    // code ...
    return 90;
  }
}

class MyOtherInterface {
  void jump() {
    // code ...
  }
}

class Class1 implements MyInterface, MyOtherInterface {
  @override
  void run() {
    // TODO: implement run
    print("Overode run");
  }

  @override
  int walk() {
    // TODO: implement walk
    throw UnimplementedError();
  }

  @override
  void jump() {
    // TODO: implement jump
  }
}
