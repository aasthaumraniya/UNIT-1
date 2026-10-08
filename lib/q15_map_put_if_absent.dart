void main() {
  Map<String, String> friendColors = {
    "Aarav": "Blue",
    "Priya": "Purple",
    "Rohan": "Green",
    "Ananya": "Red",
    "Vikram": "Black",
  };

  print("Initial Friend Colors Map: $friendColors");

  // Using putIfAbsent to add myself
  friendColors.putIfAbsent("Rahul", () => "Cyan");

  print("Updated Map after putIfAbsent: $friendColors");
}
