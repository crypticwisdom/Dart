import 'dart:io';

void main() {
  // To read any form of value from stdin (standard input).
  var input = stdin.readLineSync();
  print(input);

  // To read double values from standard input.
  double input_ = double.parse(stdin.readLineSync().toString());
  print(input_);
}
