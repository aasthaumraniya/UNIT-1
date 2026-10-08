import 'dart:async';

Stream<int> generateRollMultiples(int rollNumber) async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(const Duration(seconds: 1));
    yield rollNumber * i;
  }
}

void main() async {
  int rollNumber = 42;
  print("Starting Stream emission for Roll Number $rollNumber multiplied by 1 to 5:");

  await for (int value in generateRollMultiples(rollNumber)) {
    print("Stream Emitted Value: $value");
  }

  print("Stream consumption complete!");
}
