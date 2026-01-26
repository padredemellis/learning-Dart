void main() {
  Map<String, String> capitals = {
    "France": "Paris",
    "Japan": "Tokyo",
    "Brazil": "Brasilia",
  };
  capitals["Canada"] = "Ottawa";
  print(capitals["Japan"]);
  for (var capital in capitals.entries) {
    print('${capital.key}: ${capital.value}');
  }
}