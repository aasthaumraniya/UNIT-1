double calculateSimpleInterest(double principal, double rate, double time) {
  return (principal * rate * time) / 100;
}

void main() {
  print("--- Simple Interest Calculations ---");

  // Call 1
  double si1 = calculateSimpleInterest(1000, 5, 2);
  print("1. Principal: \$1000, Rate: 5%, Time: 2 yrs -> Simple Interest: \$$si1");

  // Call 2
  double si2 = calculateSimpleInterest(5000, 7.5, 3);
  print("2. Principal: \$5000, Rate: 7.5%, Time: 3 yrs -> Simple Interest: \$$si2");

  // Call 3
  double si3 = calculateSimpleInterest(12000, 6.5, 1.5);
  print("3. Principal: \$12000, Rate: 6.5%, Time: 1.5 yrs -> Simple Interest: \$$si3");
}
