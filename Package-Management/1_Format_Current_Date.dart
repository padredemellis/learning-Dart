import 'package:intl/intl.dart';

void main() {
  formatToday();
}

void formatToday() {
  final now = DateTime.now();
  print(DateFormat('EEEE, MMMM d, y').format(now));
}
