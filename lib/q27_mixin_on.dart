class Account {
  double balance;
  Account(this.balance);
}

mixin InterestCalculator on Account {
  void calculateAndPrintInterest() {
    double interest = balance * 0.05;
    print("Account Balance: \$${balance.toStringAsFixed(2)}");
    print("Interest at 5% rate: \$${interest.toStringAsFixed(2)}");
  }
}

class SavingsAccount extends Account with InterestCalculator {
  SavingsAccount(super.balance);
}

void main() {
  double hypotheticalBalance = 50000.0;
  SavingsAccount myAccount = SavingsAccount(hypotheticalBalance);

  print("Calculating interest for savings account:");
  myAccount.calculateAndPrintInterest();
}
