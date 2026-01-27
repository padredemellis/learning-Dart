import 'base.dart';

class Alarm extends SmartDevice {
  @override
  void turnOn() {
    status = true;
    print("Alarm turned on.");
  }

  @override
  void turnOff() {
    status = false;
    print("Alarm turned off.");
  }

  void triggerAlarm() {
    if (isOn == true) {
      print("Alarm is armed and watching...");
    } else {
      print("Alarm triggered! (because it was off)");
    }
  }
}
