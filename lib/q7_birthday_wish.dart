void printBirthdayWish([String name = "Rahul Sharma", int age = 21]) {
  print("Happy Birthday, $name! Wishing you an incredible year as you turn $age!");
}

void main() {
  print("Calling with default values:");
  printBirthdayWish();

  print("\nCalling with custom arguments:");
  printBirthdayWish("Aarav", 25);
}
