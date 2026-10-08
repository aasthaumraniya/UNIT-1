import 'dart:math';

// Arrow function to calculate area of a circle
double calculateCircleArea(double radius) => pi * radius * radius;

void main() {
  double r1 = 3.0;
  double r2 = 5.5;
  double r3 = 10.0;

  print("Circle Area for radius $r1: ${calculateCircleArea(r1).toStringAsFixed(2)}");
  print("Circle Area for radius $r2: ${calculateCircleArea(r2).toStringAsFixed(2)}");
  print("Circle Area for radius $r3: ${calculateCircleArea(r3).toStringAsFixed(2)}");
}
