mixin Cooking {
  void cook() {
    print("Cooking skill: Preparing a delicious traditional dish.");
  }
}

mixin Drawing {
  void drawSketch() {
    print("Drawing skill: Creating digital artwork and sketches.");
  }
}

mixin Coding {
  void codeApp() {
    print("Coding skill: Developing full-stack Dart and Flutter apps.");
  }
}

class MySkills with Cooking, Drawing, Coding {
  String name;
  MySkills(this.name);
}

void main() {
  MySkills mySkills = MySkills("Rahul Sharma");
  print("Skills demonstrated by ${mySkills.name}:");

  mySkills.cook();
  mySkills.drawSketch();
  mySkills.codeApp();
}
