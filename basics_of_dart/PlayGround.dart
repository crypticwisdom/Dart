import 'dart:math';

void main() {
  List<int?> my_list = [1, 2, null, 4];
  print(my_list);

  List<dynamic> m1 = [1, '3'];
  print(m1);

  var m2 = [
    122,
    [
      90,
      0,
      [9900, 988]
    ],
    3223.32,
    12.2e21,
    '212',
    true
  ];

  m2.forEach((element) {
    print(element);
  });
}
