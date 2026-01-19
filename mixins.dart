//Mixin es un "puede hacer"", class es "un es"
abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

mixin class Volador {
  String volar() => ('Estoy volando');
}

mixin class Caminante {
  String caminar() => ('Estoy caminando');
}

mixin class Nadador {
  String nadar() => ('Estoy nadando');
}

class Delfin extends Mamifero with Nadador {}

class Murcielago extends Mamifero with Volador, Caminante {}

class Gato extends Mamifero with Caminante {}

void main() {
  final flipper = Delfin();
  print('Flipper dice: ${flipper.nadar()}');
  final batman = Murcielago();
  print('Batman dice: ${batman.caminar()} y ${batman.volar()}');
}
