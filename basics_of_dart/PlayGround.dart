import 'dart:ffi';
import 'dart:typed_data';
import 'dart:math';

void main() {
  // Random rand = new Random();
  // int n = rand.nextInt(100);
  // print(rand.nextInt(100) + 1);

  // print('hi my name is ifeoluwa and i am a creative');
  // print('i love cooking, dancing, eating and ... guess the rest.');

  String? name;
  print("${name ??= 's'}");
  final age = 900;
  const ll = 34545;
  print("${age} ${ll}");

  /// --------------------------------

  switch (900) {
    case 900:
      print("Found ${age}");
      break;

    case 400:
      print("----------");
      break;

    default:
      print("This is the default state.");
  }

  String reverseString(String str) {
    try {
      String append = "";
      int len = str.length;
      for (int i = len; i > 0; i--) {
        append += str[i - 1];
      }
      return append;
    } on Exception catch (e) {
      return "${e}";
    }
  }

  print(reverseString("WISDOM"));

  int powerOfNumber(int n, int p) {
    int f = n;
    for (int d = 1; d <= p-1; d++) {
      print("${f} X ${n}");
      f *= n;
    }
    return f;
  }

  print(powerOfNumber(5, 3));
}

// drfspectacular
// django_history

int ds(int a, int b) => a * b;
String s() => 'd';
var nam = () => '...';

var func3 = (int age, [int? r]) {}; // Anonymous Function
var func4 = (String name) => "sds"; // Anonymous Function
bool funs5() => true; // Fat Arrow Function



