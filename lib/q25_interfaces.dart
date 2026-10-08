abstract class Drawable {
  void draw();
}

abstract class Resizable {
  void resize(int width, int height);
}

class Photo implements Drawable, Resizable {
  String fileName;
  int width;
  int height;

  Photo(this.fileName, this.width, this.height);

  @override
  void draw() {
    print("Drawing photo '$fileName' with resolution $width x $height px.");
  }

  @override
  void resize(int newWidth, int newHeight) {
    width = newWidth;
    height = newHeight;
    print("Resized photo '$fileName' to $width x $height px.");
  }
}

void main() {
  Photo photo = Photo("vacation_memory.jpg", 1920, 1080);
  photo.draw();
  photo.resize(1280, 720);
  photo.draw();
}
