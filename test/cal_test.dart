// test/calculator_test.dart
import 'package:flutter_test/flutter_test.dart';
import '../lib/cal_repo.dart'; // Adjust the import path based on your project structure

void main() {
  test('Adding two numbers', () {
    Calculator calculator = Calculator();
    expect(calculator.add(2, 3), 5);
  });

  test('Subtracting two numbers', () {
    Calculator calculator = Calculator();
    expect(calculator.subtract(5, 3), 2);
  });

  test('Multiplying two numbers', () {
    Calculator calculator = Calculator();
    expect(calculator.multiply(2, 3), 6);
  });

  test('Dividing two numbers', () {
    Calculator calculator = Calculator();
    expect(calculator.divide(6, 2), 3);
  });

  test('Dividing by zero should throw an error', () {
    Calculator calculator = Calculator();
    expect(() => calculator.divide(5, 0), throwsArgumentError);
  });
}
