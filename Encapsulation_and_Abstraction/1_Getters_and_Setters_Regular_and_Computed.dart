void main() {
   BankAccount account = BankAccount();
  account.balance = 250.0;
  print('Balance: ${account.balance}');
  print('Status: ${account.status}');
}

class BankAccount {
  double _balance = 0;

  double get balance => _balance;

  set balance(double value) {
    if (value >= 0) {
      _balance = value;
    } else {
      print("Error: El balance no puede ser negativo.");
    }
  }

  void deposit(double amount) {
    _balance += amount;
  }

  String get status {
    if (_balance == 0) {
      return "empty";
    } else if (_balance < 100) {
      return "Low";
    } else {
      return "Healthy";
    }
  }

  void getBalance() => print("Current balance: ${_balance}");
}
