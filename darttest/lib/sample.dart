// void main() {
//   print('Hello, World!');
// }

// void main() {
//   // Variables for an integer, a double, and a string
//   int myInteger = 5;
//   double myDouble = 3.14;
//   String myString = 'Hello';
//
//   // Perform arithmetic operations on numeric variables
//   int resultSum = myInteger + 10;
//   double resultProduct = myDouble * 2;
//
//   // Concatenate the string variable
//   String resultString = '$myString World!';
//
//   // Print the results
//   print('Original Integer: $myInteger');
//   print('Original Double: $myDouble');
//   print('Original String: $myString');
//   print('Sum of Integer and 10: $resultSum');
//   print('Product of Double and 2: $resultProduct');
//   print('Concatenated String: $resultString');
// }

import 'dart:io';

void main() {
  // Prompt the user to enter their name
  print('Enter your name:');

  // Read the input as a string
  String? userName = stdin.readLineSync();

  // Check if the user provided a name
  if (userName != null && userName.isNotEmpty) {
    // Print a personalized greeting
    print('Hello, $userName! Welcome to the Dart program.');
  } else {
    // Handle the case where the user didn't provide a name
    print('Hello! Welcome to the Dart program.');
  }
}
