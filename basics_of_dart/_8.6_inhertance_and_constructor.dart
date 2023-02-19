class Person {
  String? about;

  Person(this.about);
}

class Programmer extends Person {
  String? name;
  int? experience;

  // Programmer(this.name, this.experience, String about) : super(name);
  Programmer(String name, int experience, String about) : super(about) {
    this.name = name;
    this.experience = experience;
    this.about = about;
  }

  Programmer.Named(this.name, this.experience, String about) : super(about);
  String display() => "${this.name} - ${this.experience} - ${this.about}";
}

class JuniorProgrammer extends Programmer {
  int? time;

  // Programmer(this.name, this.experience, String about) : super(name);

  JuniorProgrammer(String name, int experience, String about, int time)
      : super(name, experience, about) {
    this.name = name;
    this.experience = experience;
    this.about = about;
    this.time = time;
  }

  String display() => "${this.name} - ${this.experience} - ${this.about}";
}

void main() {
  Programmer programmer = Programmer("Wisdom", 3, "This is about me");
  print(programmer.display());
  print(programmer is Programmer);
}
