void main() {
  Device printer = Printer();
  Device monitor = Monitor();

  printer.turnOn();
  monitor.turnOn();
}

abstract class Device {
  turnOn();
}

class Printer extends Device {
  @override
  turnOn() {
    print("Printer is now ON.");
  }
}

class Monitor extends Device {
  @override
  turnOn() {
    print("Monitor is now ON.");
  }
}