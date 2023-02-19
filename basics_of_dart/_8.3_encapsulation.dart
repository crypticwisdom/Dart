/// Encapsulation: This means data hiding within a Library.
///
/// Library; This is a single dart file that contains functions and classes.
///
/// Note: A library can be imported into another library with the 'import' keyword.
///
///
/// Encapsulation can be achieved by:
/// - Declaring the class properties as private by using underscore(_).
/// - Providing public getter and setter methods to access and update the value of private property.
///
///
/// Note: Dart doesn’t support keywords like public, private, and protected.
///  - Dart uses _ (underscore) to make a property or method private.
///  - The encapsulation happens at library level, not at class level. Which
///     means the private properties of a class can be accessed and changed
///     inside the same class and library but cannot be changed when imported into
///     a different Library.
///
///
/// Private Properties:
///   - Private property is a property that can only be accessed from same
///     library. Dart does not have any keywords like private to define a
///     private property. You can define it by prefixing an underscore (_)
///     to its name.
///
///
/// Strong Note:
///     The reason is that using underscore (_) before a variable or method name
///     makes it library private not class private.
///     It means that the variable or method is only visible to the library in which
///      it is declared. It is not visible to any other library. In simple words,
///     library is one file. If you write the main method in a separate file,
///     this will not work.
///
///
/// Read-only Properties:
/// - You can control the properties’s access and implement the encapsulation in
///  the dart by using the read-only properties. You can do that by adding the
/// final keyword before the properties declaration. Hence, you can only access
/// its value, but you cannot change it.

class Encapsulation {
  String? _name; // Private Property.

  set name(String value) =>
      this._name ?? value; // Used to set/update value of the private property.

  String get name =>
      this._name!; // Used to get the value of the private property.
}

void main() {
  /// The private value of the 'Encapsulation' class can be accessed and changed
  /// here (if it wasn't made READ-ONLY with by declaring the private property
  /// with the 'final' keyword).
  ///

  Encapsulation encap = new Encapsulation();
  print(encap._name); // Can be read in this Library only.

  encap._name = "Name"; // Can be changed / updated in this Library only.
}
