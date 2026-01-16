void main() {
  String myName = 'Emanuel'; //Se prefiere poner el tipo de dato visible
  myName = 'Mayra';
  final myApellido = 'Romero'; //vendria ser una constante
  const mySecondName =
      'Luis'; // si estrictamente que no se va a modificar la variable uso const
  //myApellido = 'Cardozo'; esto daria error
  //late final edad; late es una inicializacion tardia, guarda un lugar en la memoria que luego seró modificado
  print('Hola ${myName.toUpperCase()} ${myApellido.toLowerCase()}');
}
