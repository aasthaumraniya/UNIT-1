void main() {
  String firstName = "Rahul";

  print("Printing each letter of '$firstName' using an anonymous function:");
  firstName.split('').forEach((letter) {
    print(letter);
  });
}
