void main() {
  /*
    Function / Method in dart is a way of grouping sets of instruction to perform a specific task.
    Note: Everything in dart are objects. 


    Syntax:
     - returnType functionName(type name){
        // code
     } // Normal Function.

    - returnType functionName(parameters...) => expression; // Arrow Function. 
       /// (For functions that has only one expression).
       /// Note: The arrow function is used to make your code short.=> expr syntax is a shorthand for { return expr; }.
    - (){

    }; // Anonymous Function


    Notes:
     - A function must specific a return_type. 
     - A return_type is simply the datatype of the value that will be returned by the function.
     - A function returns null by default if any value is not being returned.

     If your custom function would not return any value, do not specify the 'void' keyword, just leave the 
     return part of the function header empty.
     
     example:
        myFunction() {
          print("---------");
        }
 
    Parameters:

    A function can have any number of required positional parameters. 
    These can be followed either by named parameters or by optional positional 
    parameters (but not both).

    
    - Positional Parameter In Dart: In positional parameters, you must supply the 
    arguments in the same order as you defined on parameters when you wrote the 
    function. If you call the function with the parameter in the wrong order, 
    you will get the wrong result.

    - Named parameters are like keyword params in Python. key and value pair.
    - Named parameter uses {}. e.g {String? named} -> null OR  {String name = "Wisdom"} -> with a value
    - Optional Positional Params uses - []. e.g [int? ds] -> null OR [int i = 0]
    
    Key Points
    - Note: The main objective of the function is DRY(Don’t Repeat Yourself)
    - In dart function are also objects.
    - You should follow the lowerCamelCase naming convention while naming function.
    - You should follow the lowerCamelCase naming convention while naming function parameters.

  */

  print(getArea(3, 4));
  print(voidFunction());
  print(namedParamRequired(d: 42));

  print(sayHello);
}

int getArea(int A, int B) {
  /// This is how to write a simple function / method.
  return A * B;
}

voidFunction() {
  // This is how to write a function that returns null by default.
  print("---------");
}

int positionalParameter(int A, int B) {
  /// This describes how to write functions with Required positional parameters.
  /// Positional parameter are parameters that must be passed as argument when
  /// calling the function.

  return A * B;
}

// Not Pracrical. Don't do this.
String parameterWithNoDataType(n, g) {
  // You need to specify a type when writting effective Dart code
  /// It is not mandatory to specify the data type of the parameter.
  /// In the absence of a data type, the parameters type is determined dynamically at runtime.

  /// Always specify parameter's datatype.
  print("$n, $g");
  return "name";
}

int sas({int named = 9}) {
  //n amed parameters are optional during invokation unless it is made required, with the 'require keyword.
  return 4;
}

// NOTE :: When calling a function, you can specify named arguments using 'paramName: value'. For example:
// sas(named: value)

// Makaing the named Param (Keyword parameter) Required.
int dsd({required int? fd}) {
  return 222;
}

int namedParamRequired({required int d}) {
  // Making a named parameter required during function invokation.
  // If you instead want a named parameter to be mandatory,
  // requiring callers to provide a value for the parameter, annotate them with required: just like this.
  return d;
}

// Fat Arrow /  function /
String func_name(String name) => "$name is Saying hello";
var sayHello = func_name("Wisdom");

// Lambda / Anonymous Function
Function lambdaa = (int age) {
  // Function is a class in Dart.

  return age;
};

// OR (Closure) // this is also nameless

var sayHelllo = (String name) => "$name is Saying hello";


/**
 * 
 * Only an expression—not a statement—can appear between the arrow (=>) and the 
    semicolon (;). For example, you can’t put an if statement there, but you can use 
    a conditional expression.
*/
