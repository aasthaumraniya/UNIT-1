late String collegeName;

void assignCollegeName() {
  collegeName = "National Institute of Technology";
}

void main() {
  print("Assigning college name inside function...");
  assignCollegeName();

  print("College Name (declared with late): $collegeName");
}
