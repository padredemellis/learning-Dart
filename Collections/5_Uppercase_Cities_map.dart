void main() {
  print(cities_to_upper);
}

List<String> cities = ["london", "madrid", "rome"];

List<String> cities_to_upper = cities.map((e) => e.toUpperCase()).toList();