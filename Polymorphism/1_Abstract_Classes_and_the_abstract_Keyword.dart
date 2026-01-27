void main() {
  Dog d = Dog();
  Cat c = Cat();

  d.makeSound();
  d.sleep();
  c.makeSound();
  c.sleep();
}

abstract class Animal {
  void makeSound(); // metodo abstracto
  void sleep() { //metodo concreto
    print("Sleeping...");
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("Woof!");
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print("Meow!");
  }
}
