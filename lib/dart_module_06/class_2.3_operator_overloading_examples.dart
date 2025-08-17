import 'dart:io';
/*
  * Dart is an Object-oriented language and is quite similar to that Java Programming. Dart is extensively used to create single-page websites and web applications. The best example of a dart application is Gmail. We'll take a look at features of Dart that are useful in some situations but aren't crucial when using Dart, and you'll probably not use it on a daily basis. Operator overloading gives you the ability to add custom implementations to a certain set of operators in your classes.
   These operators can be:
      # Arithmetic operators like + - * etc.
      # Equality operators like == and !=
      # Relational operators, > >= < and <=
      # and many more
  * The Syntax for Object Declaration:
      class_name object_name = new class_name();
  * The Syntax for Operator Function:
    class_name operator operator_symbol(argument) {
        // statements
    }
*/
void main() {
  ArithmeticOperator b = ArithmeticOperator();
  /* creation of variables of data type arith using new keyword */
  ArithmeticOperator c = ArithmeticOperator();
  ArithmeticOperator d = ArithmeticOperator();
  b.input();
  c.input();
  d = b + c;
  /* here the control goes to operator function */
  d.display();

  // Creating an instance of Consumption to demonstrate operator overloading
  print("Making an app to keep track of utilities consumption at the house:");
  Consumption one = Consumption(electricity: 15, gas: 3, water: 9);
  Consumption two = Consumption(electricity: 5, gas: 7, water: 11);
  Consumption result = (one + two) * 0.5;
  print("Result is- $result");
}

class ArithmeticOperator {
  double a = 0;

  void input() {
    print('Enter number:');
    a = double.parse(stdin.readLineSync()!);
  }

  void display() {
    print('Result: $a\n');
  }

  ArithmeticOperator operator + (ArithmeticOperator b) {
    /* with operator function of classarith return type we can use
        '+' operator to add two variables of data type arith */
    ArithmeticOperator c =  ArithmeticOperator();
    c.a = b.a + a;
    return c;
  }
}

// Making an app to keep track of utilities consumption at the house
class Consumption {
  final double? electricity;
  final double? gas;
  final double? water;

  Consumption({this.electricity, this.gas, this.water});

  Consumption operator -(Consumption other) =>
      Consumption(
        electricity: (electricity ?? 0) - (other.electricity ?? 0),
        gas: (gas ?? 0) - (other.gas ?? 0),
        water: (water ?? 0) - (other.water ?? 0),
      );
  Consumption operator +(Consumption other) =>
      Consumption(
        electricity: (electricity ?? 0) + (other.electricity ?? 0),
        gas: (gas ?? 0) + (other.gas ?? 0),
        water: (water ?? 0) + (other.water ?? 0),
      );
  Consumption operator *(double factor) =>
      Consumption(
        electricity: (electricity ?? 0) * factor,
        gas: (gas ?? 0) * factor,
        water: (water ?? 0) * factor,
      );
  @override
  String toString() {
    return 'Electricity: $electricity, Gas: $gas, Water: $water';
  }

}