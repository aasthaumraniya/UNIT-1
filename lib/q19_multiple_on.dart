void main() {
  String myName = "Rahul";
  List<String> favouriteFoods = ["Pizza", "Burger", "Pasta"];

  print("1. Attempting to parse String '$myName' as int:");
  try {
    int parsedValue = int.parse(myName);
    print("Parsed value: $parsedValue");
  } on FormatException catch (e) {
    print("Caught FormatException: Cannot convert string '$myName' to integer! ($e)");
  } on Exception catch (e) {
    print("Caught General Exception: $e");
  }

  print("\n2. Attempting to access out-of-range index in food list:");
  try {
    print(favouriteFoods[5]);
  } on RangeError catch (e) {
    print("Caught RangeError: Invalid index access in list! ($e)");
  } on Exception catch (e) {
    print("Caught General Exception: $e");
  }
}
