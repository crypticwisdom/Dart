void main() {
  // if - else if - else : Used for decision making.
  String? name;

  if (name == null) {
    /// same as... 'name ?? expression;'
    print("Name is not specified and it is '$name'.");
  } else if (name == "wisdom") {
    print("Name is ${name}.");
  } else {
    print("The else block is ran.");
  }

  // Conditional Expression

  int age = 22 < 100 ? 22 : 100; // Conditional Expression OR Tenary Expression.
  name = name ?? "Wisdom"; // Null checking.

  print(name); // output: Wisdom
  print("I am $age years old.");

  // ------------------- Switch Case Statement --------------------
  int cond1 = 1000;
  String cond2 = "string";
  const isTrue = true; // not allowed in a switch statement
  bool isFalse = false; // not allowed in a switch statement
  double floatP = 32.3; // not allowed in a switch statement

// Only the String and int datatypes can be passed as a variable to the switch
  // statement.

// Boolean and Double datatypes are not allowed.

  switch ("isTrue") {
    case "true":
      print("Found 1000");
      break;

    case "67":
      print("--------");
      break;

    default:
      print("default statement");
  }

  /*

      How the switch statement works:
      A sigle case block of code is ran when the variable passed to the switch statement
      matches 1 of the switch cases, if no case matches the variable then, the default block is ran.

    */
}
