class Class2 {
  String? name;
  int? age;

  void display() {
    print("${this.name} - ${this.age}");
  }
}

void main() {
  // Objectives:
  // - How to create class and objects.
  // What are:
  // Instance variable or Field variables.
  // define function in a class (Method).

  // - Constructors
  // Default Constructor.
  // Parameterized Constructor.
  // Name Constructor.
  // Constom constructor.

// Task: Define some properties and behavious of the Student.
  //  - student has an ID

  // ------------------------
  TestClass newClass = new TestClass(323, name: "Wisdom");
  // print(newClass.sayHello("Wisdom", 434));

  // print(newClass.toString());

  // print(newClass.get_name);

  // print(newClass._private_variable);

  var class1 = TestClass.CustomConstructor();
  print(class1);

// ----- Personal Test usage ----------

  String? s;
  s ?? print("dsd");
  print(s);

  // -- getter and setter
  Animal anime = new Animal();
  anime.set_isHealthy = true;

  print(anime.get_isHealthy);
  Dog dog = new Dog();
  print(dog.speak());
}

class TestClass {
  String? name; // This is an example of an Instance / Field Vaiable;
  /* 
    Each Instance variable name is used as a Default Getter and Setter for itself.
    Which means we can set its value by saying '.field_name = value' and also get it's value by saying '.field_name'.
  */

  int? age;
  var _private_variable;

  // Default Constructor
  TestClass(int age, {name}) {
    /* 
      - This is a Default Constructor, it should not be written with a return Type.
      - Any parameter specified in the header of this Constructor will be used 
        during object instantiation, depending on the type of parameter passed.
      - Any code inside this block will be executed first, before any other code runs.
      - The return keywod is not needed.
      - Default constructor has no parameter in it.
    */

    // The 'this' keyword is used to refer to the current object instance.

    this.name = name;
    this.age = age;
    print("\n -- Default Constructor -- \n");
  }

  // Method / Function
  String sayHello(name, age) {
    return "$name and $age";
  }

  // Void Method
  void saySomething(String a, {int b = 100}) {
    print("${a} ${b}");
  }

  // Fat Arrow Method: Can also be used as a Method as specified.
  void what() => "Nothing i am just creating a Single Function.";

  String toString() {
    // Used to override the Base Class 'toString()'  method, in other to print
    //  A string representation for this class.
    // This is a basic way of Override class Methods.
    return "${this.name} -- ${this.age}";
  }

// ------------------------- GETTER AND SETTER --------------------------
// https://www.geeksforgeeks.org/getter-and-setter-methods-in-dart/

  void set set_age(int a) {
    // This is a setter method, used to set the value.
    // The return_type must be 'void' and it doesn't require the 'return' keyword.
    // the 'a' parameter value is passed when we do 'object.set_age = here;'
    /**
     * 
     * It is used to set the data inside a variable received from the getter 
     * method. All classes have a default setter method but it can be overridden
     * explicitly. The setter method can be defined using the set keyword
     * 
    */

    // e.g:
    this._private_variable = 2323;
  }

  String get get_age {
    /**
     *  This is a Getter method, used to get a value as an Instance Variable.
     *  i.e instantiated_object_name.get_name;
     *  - Getters doesn't need parameters.
     *  
     *  -- It is used to retrieve a particular class field and save it in a 
     *     variable. All classes have a default getter method but it can be 
     *     overridden explicitly. The getter method can be defined using the get 
     *     keyword.
     */
    print("This is ${name}");
    this._private_variable = "--===-- ${this.sayHello("name", 23)} --===--";
    return this._private_variable;
  }

  TestClass.CustomConstructor() {
    // This is a Custom Constructor, also can be used to Instantiate an Object.
    // It also takes in parameters.
    // A Class can carry multiple Custom Constructors.
    // It doesn't take a return_type.

    // This can be instantiated like :=> var class1 = ClassName.CustomConstructor();
    print("This is a Custom Constructor.");
  }

  TestClass.AnotherCustomConstructor(int a, String b) {
    // Code comes in here.
    print(" | Another Constructor | ");
  }
}

// ------------------------ Class Inheritance ----------------------------
class Animal {
  String? color;
  bool _isHealthy = false;
  String? name;
  int? age;

  String walk() {
    return "${this.name} is Walking.";
  }

  String speak() {
    return "${this.name} says he is ${this.age} old.";
  }

  /**
   * 
   * 1. Set method is used to set a value prefferably to a Private field variable say '_variable',
   *    It takes in a single parameter, through a field varialbe. say 'class_object.set_variable = value_which_will_be_the_parameter'.

   * 2. Get is used to return the value of the just-modified private field variable '_variable'.
   * 
  */
  bool get get_isHealthy {
    print("Getting the 'isHealthy' instance variable.");
    return this._isHealthy;
  }

  void set set_isHealthy(bool a) {
    print("Setting a field variable 'isHealtyh' Getter method.");
    this._isHealthy = a;
  }
}

class Dog extends Animal {
  // Every method and field variables are inherited from the Parent Class.
  // Once this class is instantiated, the object would have all methods and fields of the Parent.

  // Overiding the 'speak()' method from the Animal class.

  String speak() {
    print(super.speak()); // This refers to the Parent's class 'speak()' method.
    return "This Dog is barking.";
  }

  Dog() : super() {
    // Whenever we define a Constructor there is always an implicit call to the parent Constructor.
    // There's always a ':super()' just as above, whenever a constructor is defined.
    // We only manually call the ':super()' when the Parent's Constructor is parameterized.
    // - In Dart the Parent Constructor is called first before the Child Constructor.
    // - ':super()' this is used to call the Parent Constructor.
  }

  /// --------------------------------------------
  ///

  Class2 lc = Class2(); 
  
}

class NewClass {
  // The class keyword is used for defining the class.
  // ClassName is the name of the class and must start with capital letter.
  // Body of the class consists of properties and functions.
  // Properties are used to store the data. It is also known as fields or attributes.
  // Functions are used to perform the operations. It is also known as methods.

}
