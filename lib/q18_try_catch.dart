void main() {
  int rollNumber = 42;

  try {
    print("Attempting integer division by zero for Roll Number $rollNumber...");
    int result = rollNumber ~/ 0;
    print("Result: $result");
  } catch (e) {
    print("Custom Error: Division by zero caught for Roll Number $rollNumber! Exception details: $e");
  }
}
