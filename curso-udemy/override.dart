void main() {
  final Hero wolverine = Hero(name: "Logan", power: "Garras de adamantium");
  print(wolverine);
}

class Hero {
  String? name;
  String? power;

  Hero({required this.name, required this.power}); // constructor

  @override //decoradorar que modifica la funcion toString, luego esto viene a ser como si fuera un __str___()
  String toString() {
    return 'Hola ${this.name} - ${this.power}';
  }
}
