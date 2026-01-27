void main() {
  Animal a = Animal("perro");
  print(a.name);
  a.speak();
}

class Animal {
  String name;

  Animal(this.name);

  void speak() {
    print("Some sound");
  }
}
