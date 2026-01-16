void main() {
  final Map<String, dynamic> pokemon = {
    'name': 'ditto',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['impostor'],
    'sprites': {1: 'dito/front.png', 2: 'ditto/back.png'},
  };
  print(pokemon);
  print('Nombre del Pokemon: ${pokemon['name']}');
  print('Back: ${pokemon['sprites'][2]}');
  print('Front: ${pokemon['sprites'][1]}');
}
