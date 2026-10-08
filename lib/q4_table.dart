void main() {
  int rollNumber = 42;
  int lastDigit = rollNumber % 10; // Last digit = 2

  print("Multiplication table for last digit ($lastDigit) of roll number $rollNumber:\n");

  for (int i = 1; i <= 10; i++) {
    print("$lastDigit x $i = ${lastDigit * i}");
  }
}
