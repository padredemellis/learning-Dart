void main() {
  print(greetEveryone());
  print('Suma: ${addTwoNumbers(10, 20)}');
  print('Multiplicación: ${multiplicacion(2, 4)}');
  print(greetPerson(name: 'Fernadndo', message: 'Sos una rata'));
}

String greetEveryone() =>
    'Hello everyone!'; //en Dart no se puede elaborar un cuerpo de la funcion

int addTwoNumbers(int a, int b) => a + b;

int multiplicacion(int x, [int y = 0]) => x * y;

String greetPerson({required String? name, String? message = 'Hola,'}) {
  return '$message, Fernando';
}
