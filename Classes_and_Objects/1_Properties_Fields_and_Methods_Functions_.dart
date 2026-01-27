void main() {
  Person person = Person('Alice', 30);
  person.name = 'Alice';
  person.age = 30;
  person.introduce();
}

class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void introduce() {
    print("Hi, I'm ${this.name} and I'm ${this.age} years old.");
  }
}
