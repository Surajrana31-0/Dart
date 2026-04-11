class ATM {
  double _balance;
  String _pin;

  ATM({required double balance, required String pin}): _balance = balance, _pin = pin;

  bool _verifyPin(String pin){
    return pin == _pin;
  }

  bool _checkSufficientBalance(double amount) {
    return amount <= _balance;
  }

  void _calculateNotes(double amount) {
    int remaining = amount.toInt();

    int notes1000 = remaining ~/ 1000;   // integer division
    remaining = remaining % 1000;

    int notes500 = remaining ~/ 500;
    remaining = remaining % 500;

    int notes100 = remaining ~/ 100;
    remaining = remaining % 100;

    print("Notes breakdown:");
    print("1000 x $notes1000 = ${notes1000 * 1000}");
    print("500  x $notes500  = ${notes500 * 500}");
    print("100  x $notes100  = ${notes100 * 100}");

    if (remaining > 0) {
      print("  Note: Rs.$remaining  so it could not be (below 100).");
    }
  }

  // :update balance after dispensing
  void _updateBalance(double amount) {
    _balance -= amount;
    print("  Balance updated. Remaining balance is: $_balance");
  }




  void dispenseCash(String pin, double amount) {
    print("Dispensing Rs.$amount ...");

    if (!_verifyPin(pin)) {
      print("Incorrect PIN. Transaction cancelled.");
      return;                            
    }
    print("  PIN verified.");

    // check balance
    if (!_checkSufficientBalance(amount)) {
      print("Insufficient funds. Current balance is: $_balance");
      return;                           
    }
    print("Balance sufficient.");

    // :calculate notes
    _calculateNotes(amount);

    // :update balance
    _updateBalance(amount);

    print("Please collect your cash. Thank you!");
  }



}

void main(){
  ATM atm = ATM(balance: 2000000, pin: "989898");
  atm.dispenseCash("989898", 8600);
  atm.dispenseCash("0", 5000);
  atm.dispenseCash("989898", 28900000000);
  atm.dispenseCash("989898", 15000);
  atm.dispenseCash("989898", 1250);
  
}