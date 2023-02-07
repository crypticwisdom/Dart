void main() {
  // Constants are variable that doesn't change.

  /// - const has to have a value in compile time [When the compiler checks for synta error];
  /// - needs to have a value at compile time. Which makes it mandatory to also 
  ///   initialize the final variable with a value.
  ///   
  ///   const name; name = 'Wisdom'; ==> This will through an error.
  ///   const age = 100; ==> It always needs to be declared with a value [CORRECT]
  ///
  /// - final does not need to have a value when initializing the variable, which
  ///   means the variable can be declared and later be given a value. Once a
  ///   value has been assigned to the 'final' it cannot have another assignment.
  /// - final need to have a value at runtime, which gives the final variable 
  ///   the ability to be declared without a value but it must have a value at 
  ///     RunTIme [When the code is loaded in memory as a process].
  ///
  ///   final name; name = 'George'; ===> ALlowed.
  ///   name = 'Kenneth'; ===> Not Allowed.
  ///   final age = 1000; ===> Allowed.
  /// 
   

  /// Constant Declaration:
  /// Contants are declared with the 'final' OR 'const' keyword.

  final PI1 = 3.14; // Constants can be declared with or without a datatype.
  final double PI2 = 3.14; // Constants can be declared with a datatype.

  const PI3 = 3.14; // Constants can be declared with or without a datatype.
  const int PI4 = 3144; // Constants can be declared with a datatype.

  // The 'final' and 'const' keywords are used to keep the value of the variable static in the code base.

  /*
      Differences between 'final' and 'const'.
      - The 'final' keyword is used to hardcode the value of the variable and cannot be altered in the future.
      - The 'const' keyword behaves exactly like the 'final'keyword. The only difference between them is that
        - the 'const' keyword makes the variable constant from compile-time only.

      - The 'static' keyword is used together with the 'const' keyword in a class.

  */
}
