void main() {
  /*
  Objectives:
   - What is an Exception.
   - Handling Exceptions with the 'on', 'catch' and 'finally' keywords.
   - Stack Trace.
   - Create a custom Exeption Handling class.

  */

  /*
    Exception:
     is an error that occurs at RunTime and disrupt the normal 
      flow of the Program.

      There are so many exception that might occur in Dart.

    StackTrace: This tells us about the error that occured before the exception
      was raised.

      Custom Exception Class:
      Example: Suppose a user was supposed to enter a positive number into your program 
      but he/she enters a negative number, so in that case i should notify the 
      user that he/she cannot enter a negative number. So for that case i should 
      throw an Exception.


      class CustomExceptionName implements Exception{
        String errorMessage(){
          return "Error Message";
        }
      }

      Raising an Exception:
      - We raise an Exception with the 'throw' keyword
      e.g: throw new ExceptionName / CustomExceptionName;



  */
  try {
    exception1(name: 2);
    isValid(true);
    finallyClause(true);
  } catch (error) {
    print("An error of object $error has occurred");
  }

  // Custom Exception

  try {
    calc(-9);
  } on customException catch (err, trace) {
    print("${err.errorMessage()}");
  }

  // Custom Exception 2
  try {
    print(divideNumber(-12, 2));
  } on Exception {
    print(CustomException2().toString());
  } catch (err) {
    print(err);
  }
}

int divideNumber(int n, int m) {
  int numb1 = n < 0 ? throw new CustomException2().toString() : n;
  int numb2 = m < 0 ? throw new CustomException2().toString() : m;

  return n ~/ m;
}

int exception1({int? name}) {
  try {
    // try ... on ... catch ...
    int re = 2 ~/ 0;
    print(re);
    return re;
  } on IntegerDivisionByZeroException catch (e, d) {
    // Use the 'on' clause when you know the Exception that will occur.
    print("Division by Zero error. $e");
    return 0;
  }
}

class CustomException2 implements Exception {
  String toString() {
    return "You cannot perform this operation with a negative number";
  }
}

bool isValid(bool isVal) {
  try {
    // try ... catch (ExcetionClass, StackTrace)
    int f9 = 12 ~/ 0;
  } catch (error_class, stack_trace) {
    print("${error_class} -- ${stack_trace}");
  }
  return true;
}

bool finallyClause(bool isVal) {
  // try ... catch ... finally
  try {
    int f9 = 12 ~/ 0;
  } catch (error_class, stack_trace) {
    print("${error_class} - ${stack_trace}");
  } finally {
    print("Finally Ran !!");
  }
  return false;
}

class customException implements Exception {
  String errorMessage() {
    return "Error Message, you cannot enter an amount less than 0.";
  }
}

void calc(int numb) {
  if (numb < 0) {
    throw customException();
  } else {
    print("No error");
  }
}
