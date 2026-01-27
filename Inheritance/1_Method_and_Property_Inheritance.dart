import '0_Subclassing_with_extends.dart';
void main(){
  Car c = Car();
  print('Inherited property: ${c.type}');
  print('Calling inherited method:');
  c.describe();
}
