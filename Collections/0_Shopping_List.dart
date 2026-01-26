void main() {
  List<String> shoppingList = ["milk", "bread", "eggs"];
  shoppingList.addAll(["cheese", "butter"]);
  shoppingList.remove("bread");
  print(shoppingList);
}
