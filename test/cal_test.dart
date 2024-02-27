// test/calculator_test.dart
import 'package:flutter_test/flutter_test.dart';
import '../lib/cal_repo.dart'; // Adjust the import path based on your project struct

void main() {
  late Calculator calculator;

  setUpAll(() => calculator = Calculator());

  group('Addition', () {
    test('Adding two numbers', () {
      expect(calculator.add(2, 3), 5);
    });
    test('Adding two negative numbers', () {
      expect(calculator.add(-2, -3), -5);
    });
    test('Adding three numbers', () {
      expect(calculator.addThreeNumbers(2, 3, 4), 9);
    });
    test('Adding two large numbers', () {
      expect(calculator.add(999999999999999, 1), 1000000000000000);
    });
    test('Adding two decimal numbers', () {
      expect(calculator.add(2.5, 3.5), 6);
    });
  });

  group('Subtraction', () {
    test('Subtracting two numbers', () {
      expect(calculator.subtract(5, 3), 2);
    });
    test('Subtracting a negative number from a positive number', () {
      expect(calculator.subtract(5, -3), 8);
    });
    test('Subtracting two large numbers', () {
      expect(calculator.subtract(1000000000000000, 1), 999999999999999);
    });
  });

  group('Multiplication', () {
    test('Multiplying two numbers', () {
      expect(calculator.multiply(2, 3), 6);
    });
    test('Multiplying a negative number by a positive number', () {
      expect(calculator.multiply(-2, 3), -6);
    });
  });

  group('Division', () {
    test('Dividing two numbers', () {
      expect(calculator.divide(6, 2), 3);
    });
    test(
        'Given calculator obj, When given two negative, Then return should be -a/-b',
        () {
      expect(calculator.divide(-5.0, -5.0), 1);
    });
    test(
        'Given calculator obj, When given two non negative, Then return should be a/b',
        () {
      expect(calculator.divide(5.0, 5), 1);
    });
    test('Dividing a positive number by a negative number', () {
      expect(calculator.divide(6, -2), -3);
    });
    test('Given calculator obj, When Dividing by 0, Then throws error', () {
      expect(() => calculator.divide(5, 0), throwsArgumentError);
    });
    test('Rounding result when dividing two numbers', () {
      expect(calculator.divide(5, 3), closeTo(1.67, 0.01));
    });
  });
}
