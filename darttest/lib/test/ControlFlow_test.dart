import 'package:test/test.dart';

import '../ControlFlow.dart';


void main() {
  group('isEven', () {
    test('should return true for even number', () {
      expect(isEven(4), isTrue);
    });

    test('should return false for odd number', () {
      expect(isEven(7), isFalse);
    });
  });

  group('isLeapYear', () {
    test('should return true for leap year', () {
      expect(isLeapYear(2020), isTrue);
    });

    test('should return false for non-leap year', () {
      expect(isLeapYear(2021), isFalse);
    });
  });

  group('sumOfPositiveNumbers', () {
    test('should return correct sum for positive numbers', () {
      expect(sumOfPositiveNumbers([1, 2, 3, 4, 5]), equals(15));
    });

    test('should return 0 for empty list', () {
      expect(sumOfPositiveNumbers([]), equals(0));
    });

    test('should return 0 for list with no positive numbers', () {
      expect(sumOfPositiveNumbers([-1, -2, -3, -4, -5]), equals(0));
    });
  });
}
