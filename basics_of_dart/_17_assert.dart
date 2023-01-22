void main() {
  /// While coding, it is hard to find errors in big projects, so dart provide
  /// a assert method to check for the error. It takes conditions as an
  /// argument. If the condition is true, nothing happens. If a condition is
  /// false, it will raise an error.

  var age = 22;
  assert(age == 22, "Error");
  List<String> ll = ["32", "4", "5"];

  print(ll.where((element) => element.length == 2));

  /// Note: The assert(condition) method only runs in development mode.
  /// It will throw an exception only when the condition is false.
  /// If the condition is true, nothing happens. Production code ignores it.
  
}
