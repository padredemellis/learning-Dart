import 'base.dart';
class Thermostat extends SmartDevice {
  @override
  void turnOn() {
    status = true;
    print("Thermostat turned on.");
  }

  @override
  void turnOff() {
    status = false;
    print("Thermostat turned off.");
  }

  double _temperature = 20.0;

  Thermostat(this._temperature);

  double get temperature => _temperature;

  set temperature(double newTemperature) {
    if (newTemperature > 50 || newTemperature < -50) {
      print("absurd temperature, put another one");
    } else {
      _temperature = newTemperature;
    }
  }
}
