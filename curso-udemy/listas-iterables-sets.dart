import 'dart:async';

void main() {
  final List<int> numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 10];
  print('List original $numbers');
  print('Length: ${numbers.length}');
  print('Index cero ${numbers.first}');
  print('Reversed ${numbers.reversed}'); //reversed lo convierte en iterable

  final Iterable reversedNumbers = numbers.reversed;
  print('Iterable: ${reversedNumbers}');
  print(
    'Iterable: a list ${reversedNumbers.toList()}',
  ); //recupero el listado original
  print(
    'Iterable: a set ${reversedNumbers.toSet()}',
  ); //el set no tiene duplicados

  final numbersGreaterThan5 = numbers.where((num) => num > 5); // filtrar
  print('Filtrar numeros mayores a 5: ${numbersGreaterThan5}');

  final List<int> precios = [10, 50, 100, 25];
  final Iterable<int> menor60 = precios.where((n) => n < 60);
  print('Los precios son ${precios} y los menores a 60 son ${menor60}');
}


