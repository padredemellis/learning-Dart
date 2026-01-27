void main() {
  print(message);
  printMessage();
}

String message = "Global";

void printMessage() {
  String message = "Local";
  print(message);
}
