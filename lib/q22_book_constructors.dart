class Book {
  String title;
  String author;

  // Named constructor
  Book.custom({required this.title, required this.author});

  // Default named constructor
  Book.defaultBook({this.author = "Robert C. Martin"}) : title = "Clean Code";

  void display() {
    print("Book Details: Title = '$title', Author = '$author'");
  }
}

void main() {
  print("1. Object using default named constructor:");
  Book book1 = Book.defaultBook();
  book1.display();

  print("\n2. Object using custom named constructor:");
  Book book2 = Book.custom(title: "Dart Programming Guide", author: "Gilad Bracha");
  book2.display();
}
