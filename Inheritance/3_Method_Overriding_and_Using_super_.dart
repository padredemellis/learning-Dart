void main() {
  Dog myDog = Dog();
  myDog.makeSound();
}

class Animal {
  makeSound() {
    print("Some generic animal sound");
  }
}

class Dog extends Animal {
  @override
  makeSound() {
    super.makeSound();
    print("Woof!");
  }
}
