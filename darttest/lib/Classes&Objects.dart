// class Person {
//   String name;
//   int age;
//   String address;
//
//   // Constructor
//   Person(this.name, this.age, this.address);
//
//
//   void displayDetails() {
//     print('Name: $name');
//     print('Age: $age');
//     print('Address: $address');
//   }
// }
//
// void main() {
//
//   Person person1 = Person('Ishan Nayanajith', 23, 'SLTC Campus, Meepe, Padukka');
//
//   // Print details of the person
//   print('Details of the person:');
//   person1.displayDetails();
// }
// //
// class Person {
//   String name;
//   int age;
//   String address;
//
//   // Constructor
//   Person(this.name, this.age, this.address);
//
//   // Method to display details
//   void displayDetails() {
//     print('Name: $name');
//     print('Age: $age');
//     print('Address: $address');
//   }
//
//   // Method to calculate the year of birth
//   int calculateYearOfBirth() {
//     DateTime now = DateTime.now();
//     int currentYear = now.year;
//     return currentYear - age;
//   }
// }
//
// void main() {
//   // Create an instance of the Person class
//   Person person1 = Person('Ishan Nayanajith', 23, 'SLTC Campus, Meepe, Padukka');
//
//   // Print details of the person
//   print('Details of the person:');
//   person1.displayDetails();
//
//   // Calculate and print the year of birth
//   int yearOfBirth = person1.calculateYearOfBirth();
//   print('Year of Birth: $yearOfBirth');
// }

import 'dart:math';


class Shape {
  // Method to calculate area (to be overridden by subclasses)
  double calculateArea() {
    return 0.0;
  }

  // Method to calculate perimeter (to be overridden by subclasses)
  double calculatePerimeter() {
    return 0.0;
  }
}


class Circle extends Shape {
  double radius;


  Circle(this.radius);

  @override
  double calculateArea() {
    return pi * radius * radius;
  }

  @override
  double calculatePerimeter() {
    return 2 * pi * radius;
  }
}

class Rectangle extends Shape {
  double length;
  double width;

  Rectangle(this.length, this.width);

  @override
  double calculateArea() {
    return length * width;
  }

  @override
  double calculatePerimeter() {
    return 2 * (length + width);
  }
}

void main() {
  // Create instances of Circle and Rectangle
  Circle circle = Circle(5.0);
  Rectangle rectangle = Rectangle(4.0, 6.0);

  // Demonstrate polymorphism by using a list of shapes
  List<Shape> shapes = [circle, rectangle];

  // Calculate and print area and perimeter for each shape
  for (Shape shape in shapes) {
    print('Area: ${shape.calculateArea()}');
    print('Perimeter: ${shape.calculatePerimeter()}');
    print('--------------------------');
  }
}
