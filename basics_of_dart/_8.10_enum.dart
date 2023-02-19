// Enum Type is used for storing constant values like, gender options Male, Female, Others.

// Characteristics Of Enum:
// - It must contain at least one constant value.
// - Enums are declared outside the class.
// - Used to store a large number of constant values.

// Syntax: enum Name { }

enum Gender { Male, Female, Other }

enum CompanyType {
  soleProprietorship("Sole Proprietorship"),
  partnership("Partnership"),
  corporation("Corporation"),
  limitedLiabilityCompany("Limited Liability Company");

  // Members
  final String text;
  const CompanyType(this.text);
}

class Person {
  String? name;
  CompanyType? gender;

  Person(this.name, this.gender);

  @override
  String toString() => "${this.name} - ${this.gender}";
}

void main() {
  Person person = new Person("Wisdom", CompanyType.corporation);
  CompanyType s = CompanyType.corporation;
  print(s.text);
}
