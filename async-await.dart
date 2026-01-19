void main() async {
  print('Inicio del main');
  try {
    final value = await httpGet('https://jsonplaceholder.typicode.com/');
    print('Exito: ${value}');
  } on Exception {
    print("Tenemos una Exception");
  } catch (error) {
    print("Algo terrible pasó: ${error}");
  } finally {
    print('Fin del try y catch');
  }

  print('Find del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  throw new Exception('No hay parametros en el URL');

  //throw 'error En la peticion';
  //return 'Tenemos un valor de la peticion';
}
