import 'package:characters/characters.dart';

void main() {
  printEachCharacter("Dart 🚀");
}

void printEachCharacter(String input) {
  for (final i in input.characters) {
    print("${i}");
  }
}
