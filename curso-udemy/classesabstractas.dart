void main() {
  final windPLant = WindPlant(initialEnergy: 100);
  final nuclearPLant = NuclearPlant(energyLeft: 1000);
  print(windPLant);
  print(nuclearPLant);
  print('wind: ${chargePhone(windPLant)}');
  print('wind: ${chargePhone(nuclearPLant)}');
}

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('Not enough energy');
  }
  return plant.energyLeft - 10;
}

enum PLantType { nuclear, wind, water }

abstract class EnergyPlant {
  //clase molde
  double energyLeft;
  final PLantType type; //nuclear, wind, water

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount);
}

// extends
class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
    : super(energyLeft: initialEnergy, type: PLantType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

//implements
class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;

  @override
  final PLantType type = PLantType.nuclear;

  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}
