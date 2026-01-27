import 'package:intl/intl.dart';

void main() {
  formatToday();
}

void formatToday() {
  final now = DateTime.now();
  print(DateFormat('EEEE, MMMM d, y').format(now));
}

//Apuntes
/*
Utilice la biblioteca intl.dart para formatear la fecha
cree una funcion que me sirve para obtener la fecha. La almacene en la variable now
luego la mostre por pantalla y la formatee a dia, mes, y año 
*/
