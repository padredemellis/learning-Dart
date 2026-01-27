import 'package:characters/characters.dart';

void main() {
  print("Visible characters: ${countVisibleCharacters('👨‍👩‍👧‍👦 family')}");
}

int countVisibleCharacters(String text) {
  return text.characters.length;
}
