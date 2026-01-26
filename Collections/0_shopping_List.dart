void main() {
  List<String> localList = List.from(shoppingList);
  shoppingList.addAll(["cheese", "butter"]);
  shoppingList.remove("bread");
  print(localList);
}

List<String> shoppingList = ["milk", "bread", "eggs"];

//Apintes
//Como no podia usar shoppingList desde el ejercicio 3 por tema de Scope tuve que dejarla afuera del main para poder reutilizarla