import 'dart:svg';

///
/// Getter and Setter Methods:
///  Getter and setter methods are used to access and update the value of private
///  property. Getter methods are used to access the value of private property.
///  Setter methods are used to update the value of private property.
///
/// - Every single class properties has their getters and setters which is the
///   property's name by default.
///
/// - Getters and Setters can be used to perform many / complex getting and
///  settings functionalitieis.
///
///  String get fullName => "${this.lastname} ${this.fiirstname}";
///
/// - We can also perform validations before getting or setting values.
///
/// Sample Getter:
///
///  Map<String, dynamic> get map {
///     return {"name": _name, "age": _age, "gender": _gender};
/// }
///
/// Info:
///  Note: You can use same name for getter and setter. But, you can’t use same
///  name for getter, setter and property name.
///
///
/// Use Of Getter and Setter:
//  - Validate the data before reading or writing.
//  - Restrict the read and write access to the properties.
//  - Making the properties read-only or write-only.
//  - Perform some action before reading or writing the properties.

/// When To Use Getter And Setter:
//  - Use getter and setter when you want to restrict the access to the properties.
//  - Use getter and setter when you want to perform some action before reading or writing the properties.
//  - Use getter and setter when you want to validate the data before reading or writing the properties.
//  - Don’t use getter and setter when you want to make the properties read-only or write-only.
//

class GetterAndSetter {
  final String? _firstname;
  String? _lastname;
  int? age;

  GetterAndSetter(this._lastname, this._firstname);

  set set_age(value) => this.age ??= value;

  int get get_age => this.age!;
}

void main() {
  GetterAndSetter inst = GetterAndSetter("Nwachukwu", "Wisdom");
  // inst._firstname = "sa"; This is read-only.
}
