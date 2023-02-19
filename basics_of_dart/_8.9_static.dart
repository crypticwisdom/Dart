import 'dart:math';

/// STATIC KEYWORD:

/// If you want to define a variable or method that is shared by all instances
/// of a class, you can use the static keyword. Static members are accessed
/// using the class name.  It is used for memory management.
///
/// - static members can't be accessed through an instance. It can only be
/// accessed with the Class name.
/// - static members can't be accessed with the Child's class name which is
///  inheriting from the class that has the static member's definition.
/// - You can update the value of the static member.
/// - Object members can't be accessed from inside a static member. That is
/// members with the static keyword can't be accessed in a member with static keyword.

class Person {
  static String? name; // Static variable / property.

  String info() {
    return "$name";
  }
}

class Doctor extends Person {
  String info() {
    return "hi";
  }

  static String sayInfo() {
    // Static method.
    return "-----";
  }
}

class PasswordManager {
  static String passwordGenerator({int run = 5}) {
    List<String> alphabets =
        'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'.split('');
    List<int> numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 0];
    List<String> symbols = '!@#\$%^&*()_+-='.split('');
    List<dynamic> password = [];

    for (int n = 0; n <= run; n++) {
      password.add(alphabets[Random().nextInt(alphabets.length - 1)]);
      password.add(numbers[Random().nextInt(numbers.length - 1)]);
      password.add(symbols[Random().nextInt(symbols.length - 1)]);
    }
    print(password);
    return password.join();
  }
}

void main() {
  Doctor s = new Doctor();

  Person.name = "Wisdom";
  Person.name = "dsd";
  print(Person.name);

  print(Person.name);

  print(PasswordManager.passwordGenerator(run: 19));
}
