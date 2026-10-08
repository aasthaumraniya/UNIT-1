void main() {
  List<int> marks = [42, 68, 85, 43, 92, 53];
  print("Original Marks: $marks");

  // Add 5 grace marks using map and filter out subjects < 50 using where
  List<int> updatedMarks = marks
      .map((mark) => mark + 5)
      .where((mark) => mark >= 50)
      .toList();

  print("Updated Marks (after +5 grace marks and filtering out < 50): $updatedMarks");
}
