abstract class Shape {
  double area();
  double perimeter();
}

class Square extends Shape {
  double side;
  Square(this.side);

  @override
  double area() => side * side;

  @override
  double perimeter() => 4 * side;
}

class RightTriangle extends Shape {
  double base;
  double height;
  double hypotenuse;

  RightTriangle(this.base, this.height, this.hypotenuse);

  @override
  double area() => 0.5 * base * height;

  @override
  double perimeter() => base + height + hypotenuse;
}

void main() {
  Shape square = Square(6.0);
  print("Square (side 6.0):");
  print("Area: ${square.area()}");
  print("Perimeter: ${square.perimeter()}");

  print("\nRight Triangle (base 3.0, height 4.0, hypotenuse 5.0):");
  Shape triangle = RightTriangle(3.0, 4.0, 5.0);
  print("Area: ${triangle.area()}");
  print("Perimeter: ${triangle.perimeter()}");
}
