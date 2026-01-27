void main() {
  Flyable f1 = Bird();
  Flyable f2 = Plane();

  f1.fly();
  f2.fly();
}

class Flyable {
  void fly() {
    print("Ando volando");
  }
}

class Bird implements Flyable {
  @override
  void fly() {
    print("Bird is flying");
  }
}

class Plane implements Flyable {
  @override
  void fly() {
    print("Plane is flying");
  }
}
