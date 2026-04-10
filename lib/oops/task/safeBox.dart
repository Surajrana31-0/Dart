class Safebox {
  double _amount;
  String _owner;
 
  Safebox({required double amount, required String owner})
    : _amount = amount,
      _owner = owner;
 
  double get amount => _amount;
  String get owner => _owner;
  // no needed
  // set amount(double value) => _amount = value;
  // set owner(String value) => _owner = value;
 
  void deposite(double value) {
    if (value > 0) {
      _amount += value;
    } else {
      print(" Invalid diposit amount.");
    }
     
  }
 
  void withdraw(double value) {
    if (value > 0 && amount > value) {
      _amount -= value;
    } else {
      print("Withdraw amount must be smaller than the balance in account.");
    }

  }
}
 

void main() {
  Safebox safebox = Safebox(owner: "Suraj", amount: 50000);
  print("Account Owner:${safebox.owner}");
  print("Initial Balance: ${safebox.amount}");
  safebox.deposite(5000);
  print("After diposite ${safebox.amount}");

  safebox.withdraw(500);                                   
  print("After withdraw: ${safebox.amount}");
  safebox.withdraw(-500);                                   
  print("After negative withdraw: ${safebox.amount}");
  safebox.withdraw(1000000);                                 
  print("After invalid withdraw: ${safebox.amount}");
  
  
}
 