void main() {
  print('Inicio del main');
  httpGet('https://jsonplaceholder.typicode.com/')
      .then((value) {
        print(value);
      })
      .catchError((err) {
        print("Error: $err");
      });

  print('Find del programa');
}

Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 1), () {
    throw 'Error en la peticion http';
    //return url;
  });
}
