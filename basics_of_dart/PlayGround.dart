void main() {
  Person person = Person('Wisdom', 22, 'Software Developer');
  print(person);

  final name;
  print(name);

  const age = 323;
  print(age);

  //
}

class Person {
  String? name;
  int? age;
  String? occupation;

  Person(String name, int age, String occupation) {
    this.name = name;
    this.age = age;
    this.occupation = occupation;
  }

  String toString() {
    return "${this.name} is ${this.age} and he is a ${this.occupation}";
  }
}
