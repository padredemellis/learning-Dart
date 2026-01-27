import 'base.dart';

class Light extends SmartDevice {
  @override
  void turnOn() {
    status = true;
    print("Light turned on.");
  }

  @override
  void turnOff() {
    status = false;
    print("Light turned off.");
  }
}