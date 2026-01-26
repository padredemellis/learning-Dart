void main() {
  final Hero wolverine = Hero("Logan", "Garras de adamantium");
  print(wolverine.name);
}

class Hero {
  String? name;
  String? power;

  Hero(this.name, this.power); // constructor
}
