main() {
  // Operators:

  // Arithemetic Operators: + - / * %, ~/ (integer division)

  // Comparison Operators: [==, !=, <, >, <=, >=]

  // Type Test Operators: as, is, is!
  // 'is' and 'is!' are used to check type of a value, e.g: "wisd" is String -> true
  var d = "wisdom";
  print(d is String);
  print(d is! String);

  //  'as' is used to cast Subtypes like, int to float.
  // also can be used for importing.

  Map person = {
    "name": "test",
    "cars": ["Honda", "Suzuki", "Toyota"]
  };
  var carList = person['cars'] as List;
  List gh = person['cars'] as List;

  /**
   * ----------------------------------------------------------
   *     Assignment Operator:
   * ----------------------------------------------------------
   *     [<=, >=, =, *=, +=, -=, /+, ~/=, |=, %=]
   * 
   * 
   *     Logical Operators:
   *     [&&, ||, !expr]
   * 
   * ----------------------------------------------------------
   *     NULL-AWARE Operators:
   * ----------------------------------------------------------
   *     '?.': 
   *         e.g final String name = user?.name; 
   * 
   *              Meaning: Get user.name if user is not null, but if user is null
   *                        then assign 'null' to the 'name' variable.
   * 
   * ---------------------------------------------------------
   *     '??': 
   *         e.g bool isValid = user ?? true;
   *            Meaning: run 'true' to isValid variable if user is 'null'.
   *         
   * 
   * ---------------------------------------------------------
   *     '??='
   *         e.g: String name;
   *              name ??= 8;
   * 
   *        Meaning: Assign '8' to 'name' if 'name' is 'null'.
<<<<<<< HEAD
   * 
   * 
=======
>>>>>>> 0ee33b585670b72db1abba28d466773a71be6576
   * 
  */
}
