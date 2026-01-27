import 'base.dart';
import 'Ligth.dart';
import 'termostat.dart';
import 'alarm.dart';
import 'smart_home_controller.dart';

void main() {
  var myHome = SmartHomeController();

  var livingRoomLight = Light();
  livingRoomLight.turnOn();
  var mainThermostat = Thermostat(22.0);
  mainThermostat.increaseTemp();
  print(mainThermostat.temperature);
  var securityAlarm = Alarm();

  myHome.addDevice(livingRoomLight);
  myHome.addDevice(mainThermostat);
  myHome.addDevice(securityAlarm);

  myHome.runDiagnostics();
}
