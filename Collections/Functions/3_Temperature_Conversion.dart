void main() {
  print(toCelsius(98.6));
}

String toCelsius(double fahrenheit) {
  double celsius = (fahrenheit - 32) * 5 / 9;
  return "Celsius: ${celsius}";
}
