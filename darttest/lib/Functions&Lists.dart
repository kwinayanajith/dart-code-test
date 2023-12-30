// int calculateFactorial(int number) {
//   if (number == 0 || number == 1) {
//     return 1;
//   } else {
//     return number * calculateFactorial(number - 1);
//   }
// }
//
// void main() {
//   // Example usage:
//   int num = 5;
//   int factorial = calculateFactorial(num);
//
//   print('The factorial of $num is: $factorial');
// }

// int findMax(List<int> numbers) {
//   if (numbers.isEmpty) {
//     throw ArgumentError('The list is empty. Cannot find the maximum value.');
//   }
//
//   int max = numbers[0];
//
//   for (int number in numbers) {
//     if (number > max) {
//       max = number;
//     }
//   }
//
//   return max;
// }
//
// void main() {
//   // Example usage:
//   List<int> numbers = [8, 2, 10, 25, 3];
//   int maxNumber = findMax(numbers);
//
//   print('The maximum value in the list is: $maxNumber');
// }

void main() {
  // Example usage:
  List<int> numbersWithDuplicates = [1, 2, 3, 2, 4, 5, 3, 6, 7, 8, 6, 9, 10, 1];
  List<int> uniqueNumbers = removeDuplicates(numbersWithDuplicates);

  print('List with duplicates: $numbersWithDuplicates');
  print('List without duplicates: $uniqueNumbers');
}

List<T> removeDuplicates<T>(List<T> list) {
  List<T> uniqueList = [];

  for (T element in list) {
    if (!uniqueList.contains(element)) {
      uniqueList.add(element);
    }
  }

  return uniqueList;
}
