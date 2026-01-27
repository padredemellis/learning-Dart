abstract class SmartDevice {
  bool _isOn = false;

  set status(bool value) {
    _isOn = value;
  }

  bool get isOn => _isOn;

  void turnOn();

  void turnOff();

  void printStatus() {
    if (_isOn == true) {
      print("ON");
    } else {
      print("OFF");
    }
  }
}
