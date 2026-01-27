void main() {
  printMultiples(3);
  printMultiples(5, 6);
}

void printMultiples(int number, [int max = 5]) {
  int contador = 1;
  while (contador <= max) {
    print(number * contador);
    contador++;
  }
}
