import 'dart:io';

/// I didn't spend much time on this.

void main() {
  /// https://dart-tutorial.com/file-handling-in-dart/read-file-in-dart/

  // Create a file object
  File file = File('basics_of_dart/quiz.txt');

  // read content of the file
  String content = file.readAsStringSync();

  // Print content
  print(content);

  // Rename and move anywhere
  print(file.renameSync('basics_of_dart/quiz.txt'));

  // Get file size
  print("${file.lengthSync()} bytes");

  // Get path
  print("${file.absolute} bytes");

  file.open();

  // get last modified
  print(file.lastModifiedSync());

  // Note: If you try to get information of a file that does not exist, then it
  // will throw an exception: 'FileSystemException'.

  // Comma Separated Value

  File csv = File('basics_of_dart/db.csv');
  String op = csv.readAsStringSync();

  print(op.split(','));

  // read only first 10 characters
  String contents = file.readAsStringSync().substring(0, 10);
  // print file
  print(contents);

  // Read File From Specific Directory:
  // - To read a file from a specific directory, you need to provide the full path of the file.
  File file1 = File('C:\\Users\\test.txt');
  // read file
  String contents1 = file.readAsStringSync();

  // ------------------------ Writting to File --------------------------------

  // Create File.
  File nn = new File('ds.csv');
  nn.create();

  // Note: If you have already some content in test.txt file, then it will be
  // removed and replaced with new content.

  nn.writeAsStringSync('Welcome to test.txt file.');
  print('File written.');

  // Add New Content To Previous Content: You can use 'FileMode.append' to add
  // new content to previous content.

  nn.writeAsStringSync('\n----s', mode: FileMode.append);
}

/// A CSV (Comma Separated Values) file is a plain text file that contains data
/// organized in a table format, where columns are separated by commas and rows
/// are separated by line breaks.
/// 
/// - Data exchange between different applications.
/// - Data backup and restore.
/// - Importing and exporting data from databases.
/// - Automation of data processing tasks.


 // ---------- 1 --------------------
  // File file = File('basics_of_dart/file1.txt');
  // file.create();
  // file.writeAsStringSync('Nwachukwu Wisdom');

  // // ---------- 2 --------------------
  // var friends = ['Daniel', 'Precious'];
  // for (String name in friends) {
  //   file.writeAsStringSync("\n${name}", mode: FileMode.append);
  // }

  // // ---------- 3 --------------------
  // Directory g = Directory.current;
  // print(g);

  // // ---------- 4 --------------------
  // file.copySync('basics_of_dart/hello_copy.txt');

  // // ---------- 5 --------------------
  // for (int i = 1; i <= 100; i++) {
  //   File file1 = new File('basics_of_dart//file_${i}');
  //   file1.createSync();

  //   file1.delete();
  // }

  // // ---------- 6 ---------------------
  // File csv = new File('basics_of_dart/csv1.csv');
  // csv.createSync();

  // csv.writeAsStringSync('name,age,email\n', mode: FileMode.append);
  // csv.writeAsStringSync('Wisdom,23,crypticwisdom84@gmail.com\n', mode: FileMode.append);
  