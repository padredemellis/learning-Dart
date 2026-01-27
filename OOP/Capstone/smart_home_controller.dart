import 'base.dart';


class SmartHomeController {
  List<SmartDevice> _devices = [];

  List<SmartDevice> get allDevices => _devices;

  void addDevice(SmartDevice device) {
    _devices.add(device);
    print("Added ${device.runtimeType} to the system.");
  }

  void runDiagnostics() {
    print("--- Home Status Report ---");
    for (var device in _devices) {
      device.printStatus();
    }
  }
}