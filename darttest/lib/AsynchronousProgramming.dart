// import 'dart:async';
//
// void main() {
//   print('Start of the program');
//
//   // Simulate asynchronous operation using Future.delayed
//   simulateAsyncOperation().then((result) {
//     print('Asynchronous operation completed: $result');
//   });
//
//   print('End of the program');
// }
//
// // Function to simulate an asynchronous operation
// Future<String> simulateAsyncOperation() async {
//   print('Start of asynchronous operation');
//
//   // Simulate a delay of 2 seconds
//   await Future.delayed(Duration(seconds: 3));
//
//   print('End of asynchronous operation');
//
//   return 'Result from asynchronous operation';
// }

// import 'dart:convert';
// import 'package:http/http.dart' as http;
//
// Future<void> fetchData() async {
//   final url = Uri.parse('https://jsonplaceholder.typicode.com/todos/1');
//
//   try {
//     final response = await http.get(url);
//
//     if (response.statusCode == 200) {
//       final Map<String, dynamic> data = json.decode(response.body);
//
//       // Accessing specific fields in the response
//       final int userId = data['userId'];
//       final int id = data['id'];
//       final String title = data['title'];
//       final bool completed = data['completed'];
//
//       // Printing the fetched data
//       print('User ID: $userId');
//       print('ID: $id');
//       print('Title: $title');
//       print('Completed: $completed');
//     } else {
//       throw Exception('Failed to load data. Status code: ${response.statusCode}');
//     }
//   } catch (error) {
//     print('Error: $error');
//   }
// }
//
// void main() {
//   fetchData();
// }

import 'dart:io';

Future<void> readFileAsync(String filePath) async {
  try {
    // Open the file for reading
    final file = File(filePath);
    final contents = await file.readAsString();

    // Print the contents of the file
    print('File Contents:');
    print(contents);
  } catch (e) {
    print('Error reading file: $e');
  }
}

void main() {
  final filePath = 'lib/sample.txt';

  readFileAsync(filePath);
}
