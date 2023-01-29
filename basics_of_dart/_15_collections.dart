void main() {
  /// Collections like List has methods used for manipulating its elements.

  // ------------------- LISTS --------------------
  /// Types Of Lists
  /// 1. Fixed Length List
  /// 2. Growable List [Mostly Used]

  // - Declare a List (Growable List).
  List<int> list_of_integers = [1, 2, 3, 4];

  // - How to Declare Mixed List
  var mixed_list_1 = [1, 21.2, "wisdom", true, false]; // right way
  dynamic mixed_list_2 = [12.3, 2, "sf", true];
  List<dynamic> mixed_list_3 = [12, 12.3, "a", false];
  print(mixed_list_3.runtimeType);

  /// - You access the list indexly.
  mixed_list_1[0];

  /// Find the length of a List.
  mixed_list_1.length;

  /// - Get Index By Value
  print(mixed_list_1.indexOf(8));

  /// - Changing Values Of List.  listName[index]=value;
  /// Note: Remember that List index starts with 0 and length always starts with 1.
  mixed_list_1[0] = "909";

  /// Mutable And Immutable List
  /// A mutable List means they can change after the declaration, and an
  /// immutable List means means they can’t change after the declaration.

  List<String> names1 = ["Raj", "John", "Rocky"]; // Mutable List
  names1[1] = "Bill"; // possible
  names1[2] = "Elon"; // possible

  // const List<String> names = ["Raj", "John", "Rocky"]; // Immutable List
  // names[1] = "Bill"; // not possible
  // names[2] = "Elon"; // not possible

/**
 * 
 * List Properties In Dart:
    first: It returns the first element in the List.
    last: It returns the last element in the List.
    isEmpty: It returns true if the List is empty and false if the List is not empty.
    isNotEmpty: It returns true if the List is not empty and false if the List is empty.
    length: It returns the length of the List.
    reversed: It returns a List in reverse order.
    Single: It is used to check if the List has only one element and returns it.
 *  e.g list_1.isEmpty; or list_1.isEmpty.toString();
 * 
 * 
 * Some Methods:
 *  add(), addAll(), insert(), insertAll() ...
 */
  print(list_of_integers.map((element) => element * 3)); //Output: (3, 6, 9, 12)

  /// ------------------- Fixed Length List ------------------
  ///  - The fixed-length Lists are defined with the specified length.
  ///    You cannot change the size at runtime.
  ///  - Some of the list methods does not work with this type of list, like you
  ///    cannot remove/add from/to the list since it is fixed.
  var list = List<int>.filled(3, 0);
  list[2] = 9;
  print(list);

  /// Methods of Combining 2 or more List.
  List<dynamic> combined_list1 = [...mixed_list_3, ...mixed_list_1];
  var combined_list2 = mixed_list_1 + mixed_list_2;
  print(combined_list1);
  print(combined_list2);

  /// Conditions In List
  bool check = false;
  var cart = [
    'Iphone 11 pro',
    1000,
    if (check) 'Milk' else if (check == "l") 'dsd' else "Butter"
  ];
  print(cart);

  // List<int> numbers = [2, 4, 6, 8, 10, 11, 12, 13, 14];

  // List<int> even = numbers.where((number) => number.isEven).toList();
  // print(even);

  // ------------------ END OF LIST -------------------

  // -------------------------- Set -----------------------------

  /// Set is a unique collection of items.
  /// You cannot store duplicate values in the Set.
  /// It is unordered, so it can be faster than lists while working with a
  /// large amount of data. Set is useful when you need to store unique values
  /// without considering the order of the input. E.g., fruits name,
  /// months name, days name, etc. It is represented by Curley Braces{}.

  // --------------- Declare a Set ------------------
  // Syntax:
  //         - Set <variable_type> variable_name = {};
  //         - var set1 = {'sdfs', 324};

  Set<int> kl = {};
  print(kl.runtimeType);

  var set1 = {'sdfs', 324};
  print(set1.runtimeType);

  Set<String> weekday = {"Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"};
  weekday.forEach((element) => print(element));

  // ! Please check for Sets method available, whenever you want to work with Sets.

  // ----------------- END OF SETS --------------------------

  // ----------------- Maps --------------------------
  /// In a Map, data is stored as keys and values. In Map, each key must be
  /// unique. They are similar to HashMaps and Dictionaries in other languages.

  // Map<String, dynamic> // means the keys can be string while the values can be any datatype object.
  Map<String, dynamic> dict = {
    "wisdom": 435,
  }; // How to create MAPS
  print(dict);

  // Adding New Item
  dict['Japan'] = 'Tokio'; // Adding and Updating the MAP.
  print(dict);

  // List of Maps
  List<Map<String, int>> fg = [
    {'name': 43}
  ];
  print(fg);

  // Loop Through For Each
  dict.forEach((key, value) => print('Key is $key and value is $value'));

  // -- Properties --
  /// .keys()
  /// .values()
  /// isEmpty
  /// isNotEmpty
  /// length
  /// keys.toList()
  /// values.toList()
  ///
  ///
  ///
  /// -- Some methods --
  /// .containsKey('key');
  /// .containsValue('value')
  /// .clear()
  /// .removeWhere() ------	Removes all elements from the Map if condition is valid.

  /// -------------- The Where ----------------
  /// You can use where in list, set, map to filter specific items.
  /// It returns a new list containing all the elements that satisfy the
  /// condition. This is also called Where Filter in dart.
  ///
  List<int> numbers = [2, 4, 6, 8, 10, 11, 12, 13, 14];

  List<int> oddNumbers = numbers.where((number) => number.isOdd).toList();
  print(oddNumbers);

  // ---------------------------------------

  List<String> days = [
    "Sunday",
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday"
  ];

  List<String> startWithS =
      days.where((element) => element.startsWith("S")).toList();

  print(startWithS);

  // -----------------------------
  Map<String, double> mathMarks = {
    "ram": 30,
    "mark": 32,
    "harry": 88,
    "raj": 69,
    "john": 15
  };

  mathMarks.removeWhere((key, value) => value < 32);

  print(mathMarks);
}
