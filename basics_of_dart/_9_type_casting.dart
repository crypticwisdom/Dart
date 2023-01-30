main() {
  // Type Casting:

  /// let's suppose you have a class called User, and several subclasses of User.
  /// Each of these subclasses will have different properties from each other.
  /// You can use 'as' to access these sub-class specific properties in your code.
  // Converting values from their datatypes to a different datatype.

  // Type Conversion
  // 1. String to int
  var age = '89';
  print(int.parse(age));

  // 2. String to double
  double ina = 233.3;
  print(ina.toInt());

  // 3. String to Integer
  String agee = "23";
  print(int.parse(agee));

  // 4. Integer to String
  int strint = 33;
  print("${strint.toString()} -- ");

  // Check for type [is, is!]
  int a = int.parse(age);
  print(a is! String);
}
