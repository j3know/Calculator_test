// lib/calculator.dart

import 'dart:math';

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

  double pow(double base, double exponent) {
    throw UnimplementedError();
  }

  double sqrt(double value) {
    if (value < 0) {
      throw ArgumentError('Cannot calculate square root of a negative number');
    }
    throw UnimplementedError();
  }

  double addThreeNumbers(double a, double b, double c) {
    throw UnimplementedError();
  }
}
