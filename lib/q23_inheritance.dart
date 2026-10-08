class Person {
  String name;
  Person(this.name);

  void introduce() {
    print("Hello, I am $name.");
  }
}

class Teacher extends Person {
  String subject;

  Teacher(super.name, this.subject);

  @override
  void introduce() {
    print("Hello, I am Professor $name and my subject is $subject.");
  }
}

void main() {
  Person person = Person("Rahul Sharma");
  person.introduce();

  Teacher teacher = Teacher("Sharma", "Mobile Application Development");
  teacher.introduce();
}
