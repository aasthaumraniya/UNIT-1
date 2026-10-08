import 'dart:async';

Future<String> fetchName() async {
  await Future.delayed(const Duration(seconds: 1));
  return "Rahul Sharma";
}

Future<int> fetchRollNumber() async {
  await Future.delayed(const Duration(seconds: 1));
  return 42;
}

Future<String> fetchFinalResult() async {
  await Future.delayed(const Duration(seconds: 1));
  return "Pass with Distinction (88.5%)";
}

void main() async {
  print("--- Sequential Fetch using async/await ---");

  print("1. Fetching name...");
  String name = await fetchName();
  print("Name: $name");

  print("\n2. Fetching roll number...");
  int roll = await fetchRollNumber();
  print("Roll Number: $roll");

  print("\n3. Fetching final result...");
  String result = await fetchFinalResult();
  print("Final Result: $result");
}
