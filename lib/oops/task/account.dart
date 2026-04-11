class Account {
  String accountNumber;
  String holderName;
  double _balance;

  Account({required this.accountNumber, required this.holderName, required double balance})
  : _balance = balance;

  //methode  to deposite amount in _balance
  void deposit(double amount){
    if (amount<=0){
      print("Deposite ammount 0 vanda thulo hunu parxha.");
      return;
    } else{
      _balance +=amount;
      print("the total amount is:$amount") ;

    }
  }


  // methode to Withdraw amount form _balance
  void withdraw(double amount){
    //can handel seperate or at once
    if (amount <= 0) {
      print("Withdrawal amount must be positive.");
      return;
    } 
    if (amount>_balance){
      print("$amount Niskidaina! Insufficient fund, Currently you have:$_balance");
      return;
    }
    _balance -= amount;
    print("After Withdraw the amount is:$amount");
  }


  //get methode to get balance
  double getBalance (){
    return _balance;
  }
  //or double getBalance() => _balance;

  //Methode to return Account type
  String accountType(){
    return "Basic Accont";
  }

  //or String accountType()=>"Basic account"


}


class SavingAccount extends Account{
  double interestRate;

  SavingAccount({
    required this.interestRate,
    required String holderName,
    required String accountNumber,
    required double balance}):super(// parent constructor
      holderName: holderName,
      accountNumber: accountNumber,
      balance: balance);
    
    @override
    String accountType(){
      return "Saving Account";  //String accountType() => "Savings Account";
    }

    void applyInterest(){
      double interest = _balance*(interestRate/100);//interest amount
      _balance += interest;
      print("The amount after$interestRate% is:$interest");

    }
}

class CurrentAccount extends Account{
  double overDraftLimit;
  CurrentAccount({
    required this.overDraftLimit,
    required String holderName,
    required String accountNumber,
    required double balance 
  }):super(
    accountNumber: accountNumber,
    holderName: holderName,
    balance: balance
  );

  @override
  String accountType(){
    return "Current Account";
  }

  @override
  void withdraw(double amount) {
    if (amount <= 0) {
      print("Withdrawal amount must be positive.");
      return;
    }
    // balance can go negative but not beyond overdraftLimit
    if (_balance - amount < - overDraftLimit) {
      print("Overdraft limit exceeded. Overdraft limit: $overDraftLimit");
      return;
    }
    _balance -= amount;
    print("Withdrawn: $amount");
  }

}
void main(){
  Account acco = Account(accountNumber: "123456Suraj", holderName: "Suraj Rana", balance: 2500000);
  print("Account type: ${acco.accountType()}");


  acco.deposit(20000);
  acco.withdraw(10000);
  acco.withdraw(70000000);
  print("Actual balance in account:${acco.getBalance()}");
  print("");
  

  SavingAccount saving = SavingAccount(interestRate: 13, holderName: "Suraj Rana", accountNumber: "12345S1", balance: 230000);
  print("Account Type : ${saving.accountType()}");
  print("Account Holder: ${saving.holderName}");
  print("Balance: ${saving.getBalance()}");
  saving.deposit(10000);
  print("Balance after deposit: ${saving.getBalance()}");

  saving.withdraw(5000);
  print("Balance after withdrawal  : ${saving.getBalance()}");

  saving.withdraw(5000000000);              // invalid ///insufficient funds
  print("Balance after failed withdraw: ${saving.getBalance()}");
  saving.applyInterest();
  print("Balance after interest    : ${saving.getBalance()}");


print("");

  CurrentAccount currentTrns = CurrentAccount(overDraftLimit: 45000, holderName: "Suraj Rana", accountNumber: "A1S12345", balance: 560000);
  print("Account Type : ${currentTrns.accountType()}");
  print("Holder: ${currentTrns.holderName}");
  print("Balance: ${currentTrns.getBalance()}");

  currentTrns.deposit(2000);
  print("Balance after deposit: ${currentTrns.getBalance()}");
  currentTrns.withdraw(8000);               // valid 
  print("Balance after withdrawal: ${currentTrns.getBalance()}");

  currentTrns.withdraw(8000);               //  exceeds overdraft limit
  print("Balance after failed withdraw: ${currentTrns.getBalance()}");

  currentTrns.withdraw(6000);               //goes negative but within limit
  print("Balance after overdraft: ${currentTrns.getBalance()}");



}

