void main() {
  /* 
  ----------------------------- Data Types ----------------------------------

    1. String: This is a sequence of characters. Written with a single or double quotes.
    2. number:
     - int: signed and unsigned numbers. e.g -1323, 123334
     - double: float point numbers. signed or unsigned. -33.434 or 0.34 3.43e23

    3. boolean: true or false.
    4. null: Empty value. Every object with an empty value has a null value by default.
      a variable can be initialized with null value too, all you need is to 
      specify the nullable operator '?' after the type and before specifying the variable name.
          - String? name; -> null
          - int? age = null;
          - var age; // doesn't need the '?' operator, because the compiler will automatically inffer a null type to it.
  */

  /* ------------------------Variable Declaration----------------------------

    Syntax: datatype variable_name = value;

    Declare a variable with an empty value:
      datatype? name; 
      
      OR 
      
      datatype? name = null; 
      
      OR
      
      var name = null;

      OR

      var name;

      OR 

      dynamic name = value;

      OR

      num number_value = 213.23;
  */

  String name = "Wisdom";
  double floatPoint = 4.43e23;
  int age = 23;
  int hexValue = 0x99ABCDEF; // The length of this hexa decimal
  // is 0x + 8 more characters from (0 1 2 3 4 5 6 7 8 9 A a B b C c D d E e F f).
  var emptyValue = null;
  bool isValid = true;

  var surname = 'Nwachukwu'; // Type inferred variable, the datatype of this
  // valiable will be inferred by the Compiler.

  print("$hexValue");

  // String Interpolation. (Example)
  print(
      "Substituting values like '$surname' or '${isValid.runtimeType}' in or to a string ");

  // Literals
  // This is simply the value passed to any variable.

  /// dynamic
  /// This is used to declare variables that can be changed at any moment in the program.
  /// If you did want to create a variable that's more dynamic, you'd use the dynamic keyword.

  // e.g:
  /// dynamic sd = 323;
  ///
  /// Note: this is not adviceable for use in your program.
  ///

  /// num is a super class of both int and double. Which means you can use num
  ///  when dealing with numbers that could be an integer or floating-point
  /// number. They're best used when you don't know which of the types to be used.
  ///
  /// e.g:
  /// num age = 32.32;
  num age3 = 434;
  print(age3);

  // Some String Methods
  String greeting = 'howdy';
  print(greeting.split("")); // ['h', 'o', 'w', 'd', 'y']
  print(greeting.indexOf('o')); // 1
  greeting.contains('h');
  greeting.isEmpty;

  // The assert() function is an inbuilt function used to assert an expression to either true or false.
  assert(greeting.length == 5); // true
}
