void main() {
  int rollNumber = 20; // Upper limit
  int num = 1;

  print("Even numbers between 1 and $rollNumber:");
  while (num <= rollNumber) {
    if (num % 2 == 0) {
      print(num);
    }
    num++;
  }
}
