// import 'dart:io';
//
// void main() {
//   // Prompt the user to enter a number
//   print('Enter a number:');
//
//   // Read the input as a string and convert it to an integer
//   String userInput = stdin.readLineSync()!;
//   int number = int.tryParse(userInput) ?? 0;
//
//   // Check if the number is even or odd
//   if (isEven(number)) {
//     print('$number is an even number.');
//   } else {
//     print('$number is an odd number.');
//   }
// }
//
// bool isEven(int number) {
//   // Check if the number is even
//   return number % 2 == 0;
// }

// import 'dart:io';
//
// void main() {
//   // Prompt the user to enter a year
//   print('Enter a year:');
//
//   // Read the input as a string and convert it to an integer
//   String userInput = stdin.readLineSync()!;
//   int year = int.tryParse(userInput) ?? 0;
//
//   // Check if the year is a leap year
//   if (isLeapYear(year)) {
//     print('$year is a leap year.');
//   } else {
//     print('$year is not a leap year.');
//   }
// }
//
// bool isLeapYear(int year) {
//   // Leap year logic
//   if (year % 4 == 0) {
//     // If divisible by 4
//     if (year % 100 != 0 || (year % 100 == 0 && year % 400 == 0)) {
//       // If not divisible by 100 or divisible by 400
//       return true;
//     }
//   }
//   return false;
// }

int sumOfPositiveNumbers(List<int> numbers) {
  int sum = 0;

  for (int number in numbers) {
    if (number > 0) {
      sum += number;
    }
  }

  return sum;
}

void main() {
  // Example usage:
  List<int> numbers = [-2, 5, 10, -3, 8, -1];
  int result = sumOfPositiveNumbers(numbers);

  print('The sum of positive numbers is: $result');
}
