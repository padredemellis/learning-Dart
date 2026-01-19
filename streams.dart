void main() {
  emitNumbers().listen((value) {
    print('Stream value: ${value}');
  });
}

Stream<int> emitNumbers() {
  return Stream.periodic(const Duration(seconds: 1), (value) {
    return value;
  }).take(5);
}

//Es un flujo de datos a lo largo del tiempo