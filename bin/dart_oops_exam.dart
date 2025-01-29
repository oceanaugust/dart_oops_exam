1.

void squares(int a) {
  for (int i = 1; i <= a; i++) print(i * i);
}

void main() {
  squares(5);
}

2.

abstract class Animal {
  makesound();
}

class Dog extends Animal {
  @override
  makesound() {
    print("Woof");
  }
}

class Cat extends Animal {
  @override
  makesound() {
    print("Meow");
  }
}

void main() {
  Dog dog = Dog();
  Cat cat = Cat();

  dog.makesound();
  cat.makesound();
}

3.

class Shape {
  String _color;

  Shape(this._color);
  String get color => _color;
  set color(String newColor) => _color = newColor;

  displayColor() {
    print("color  : $_color");
  }
}

class Circle extends Shape {
  double _radius;
  Circle(this._radius, super._color);

  double get radius => _radius;
  set radius(double newRadius) => _radius = newRadius;

  displayProperties() {
    displayColor();
    print("radius : $radius");
  }
}

class Rectangle extends Shape {
  double _length;
  double _breath;

  Rectangle(this._length, this._breath, super._color);
  set length(double newLength) => _length = newLength;
  set breath(double newBreath) => _breath = newBreath;

  double get legeth => _length;
  double get breath => _breath;

  displayProperties() {
    displayColor();
    print("length : $legeth");
    print("breath : $breath");
  }
}

void main() {
  Rectangle rec = Rectangle(5, 20, "red");
  Circle cir = Circle(5, "green");

  cir.displayProperties();
  rec.displayProperties();
}

4.

mixin Logger {
  void logMessage(String message) {
    print("Log: $message");
  }
}

abstract class Vehicle {
  void startEngine();
  void stopEngine();
}

class Car extends Vehicle with Logger {
  @override
  void startEngine() {
    logMessage("Car engine started.");
  }

  @override
  void stopEngine() {
    logMessage("Car engine stopped.");
  }
}

void main() {
  Car myCar = Car();
  myCar.startEngine();
  myCar.stopEngine();
}
