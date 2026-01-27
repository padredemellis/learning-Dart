import '1_Abstract_Classes_and_the_abstract_Keyword.dart';

void main() {
  List pets = [Dog(), Cat()];

  for (var pet in pets) {
    print(pet.runtimeType);
    pet.makeSound();
    if (pet is Dog) {
      print("It's a dog");
    }
  }
}

