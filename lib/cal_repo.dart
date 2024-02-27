// lib/calculator.dart

class Calculator {
  double add(double a, double b) {
    throw UnimplementedError();
  }

  double subtract(double a, double b) {
    throw UnimplementedError();
  }

  double multiply(double a, double b) {
    throw UnimplementedError();
  }

  double divide(double a, double b) {
    if (b == 0) {
      throw ArgumentError('Cannot divide by zero');
    }
    throw UnimplementedError();
  }
}
