void main() {
  try {
    final Square mySquare = Square(side: -10);
    print(mySquare.calculateArea());
  } catch (e) {
    print('Error: $e');
  }
}

class Square {
  double _side; // side * side

  Square({required double side}) {//constructor
    if (side < 0){
      throw ArgumentError('Side must be >= 0, but received $side');
    }
      _side = side;
  }
  double get area {
    return _side * _side;
  }

  set side(double newSide) {
    print('setting new value $newSide');
    if (newSide < 0) throw 'Value must be > = 0';
    _side = newSide;
  }

  double calculateArea() {
    //metodo
    return _side * _side;
  }
}
