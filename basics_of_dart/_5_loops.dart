void main() {
  /*  
    - Loops are used for Task repetition.
    - Types: for loop, for-in loop, while loop and do-while loop.

    Use cases:
    - Use for-in loop when you are looping through the items of an iterable like List.
    - Use for loop whe the number of times you want to loop is definate (Known).
    - use while loops when the number of times you want to loop is indefinate (Unknown).

    LABEL : This is used as an identifier for a loop or control statements.
     - It is a user defined identifier that is specified before or at the TOP of the loop header 
        statement or control flow statement followed by a colon ':'.
    
  */

  label:
  if (true) {
    // Example of
  }

  for_loop1:
  for (int a = 0; a < 4; a++) {
    print("For loop with label");
  }

  var count = 0;
  while_loop:
  while (count < 4) {
    print("while loop with Label");
    count += 1;
  }

  double c = 0;
  do_while:
  do {
    print("Do-While loop with Label '$c'.");
    c += 0.91;
  } while (c < 4);

  //  Simple Application of the Label
  for_loop2:
  for (int a = 0; a < 4; a++) {
    for (int b = 0; b < 4; b++) {
      if (a == 2 && b == 2) {
        print("Break the Outer loop with it's label.");
        break for_loop2;
      }
      print("$a - $b");
    }
  }
}
