import 'dart:convert';

class Person {
  String? name;
  int? age;
  // Default COnstructor: The compiler creates this for me, but you can have
  // this if you want to include an initialization code.

  // Person() {
  //   this.name = 'Wisdom';
  // }

  // Parameterized Constructor
  Person(String name, int age) {
    this.name = name;
    this.age = age;
  }

  String toString() {
    return "${this.name}";
  }
}

// Real Life Example of how to use Contructors, especially Named Constructors.
// - 1 reason why we need named constructors is to be able to instantiate an
//   object with different form of Constructor.

// class JsonHandler {

//   String? name;
//   String? occupation;
//   int? age;

//   JsonHandler(String name, String occupation, int age) {
//     this.name = name;
//     this.occupation = occupation;
//     this.age = age;
//     print(
//         "An object of JsonHandler has been created with the Default Parameterized Contructor -> ${this.name}");
//   }

//   JsonHandler.CreateFromJson(Map<String, dynamic> json) {
//     this.name = json['name']!;
//     this.occupation = json['occupation']!;
//     this.age = json['age']!;

//     print(
//         "An object of JsonHandler has been created with the JsonHandler.CreateFromJson -> ${this.name}");
//   }

//   JsonHandler.FromJsonString(String jsonString) {
//     Map<String, dynamic> json = jsonDecode(jsonString);
//     this.name = json['name'];
//     this.occupation = json['occupation'];
//     this.age = json['age'];

//     print(
//         "An object of JsonHandler has been created with the JsonHandler.FromJsonString -> ${this.name}");
//   }
// }

class JsonHandler1 {
  String? name;
  int? age;
  bool? isMarried;
  String? instanceType;

  JsonHandler1(this.name, this.age, this.isMarried);

  JsonHandler1.JsonToObject(Map<String, dynamic> json_) {
    this.name = json_['name']!;
    this.age = json_['age']!;
    this.isMarried = json_['isMarried']!;
    this.instanceType = "Json to Object";
    print(
        "Json to Object: ${this.name} - ${this.age} - ${this.isMarried} ${this.instanceType}");
  }

  JsonHandler1.JsonStringToObject(String jsonString) {
    var result = jsonDecode(jsonString);
    this.name = result['name']!;
    this.age = result['age']!;
    this.isMarried = result['isMarried']!;
    this.instanceType = "Json String to Object";
    print(
        "Json to Object: ${this.name} - ${this.age} - ${this.isMarried} ${this.instanceType}");
  }

  String toString() => "This is ${this.name} Object: ${this.instanceType}";
}

void main() {
  JsonHandler1 object1 = JsonHandler1('Wisdom', 23, false);
  print(object1);

  JsonHandler1 object2 = JsonHandler1.JsonToObject(
      {"name": "George", "age": 19, "isMarried": false});
  print(object2);

  JsonHandler1 object3 = JsonHandler1.JsonStringToObject('{"name": "Kenneth", "age": 15, "isMarried": false}');
  print(object3);
  // JsonHandler jsonObject = JsonHandler('Wisdom', 'Software Developer', 22);
  // print(jsonObject);

  // Map<String, dynamic> jsonMap = {
  //   "name": "George",
  //   "occupation": "Electrical Engineer",
  //   "age": 19
  // };

  // JsonHandler fromJson = JsonHandler.CreateFromJson(jsonMap);
  // print(fromJson);

  // JsonHandler fromJsonString = JsonHandler.FromJsonString(
  //     '{ "name": "Kenneth","occupation": "Musician","age": 19}');

  // print(fromJsonString);
}
