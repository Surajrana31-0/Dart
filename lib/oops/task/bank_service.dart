abstract class BankService {


  void openAccount(String name, double initialDeposit);

  void closeAccount(String accountNumber);

  double checkBalance(String accountNumber);
  void printStatement(String accountNumber);

  // this is shared by all, no override needed
  void printBankName() {
    print("Welcome to Dart National Bank");
  }
}

class SimpleBankService extends BankService {
  @override
  void openAccount(String name, double initialDeposit) {
    print("Opening account for $name with initial deposit of amount: $initialDeposit");
  }


  @override
  void closeAccount(String accountNumber) {
    print("Closing account number $accountNumber");
  }



  @override
  double checkBalance(String accountNumber) {
    print("Checking balance for account $accountNumber");
    // it is simulated balance —:_-----------no real data store needed
    return 25000;
  }

  @override
  void printStatement(String accountNumber){
    print("Statement is:$accountNumber");
  }
}

void main(){
  SimpleBankService sampServ = SimpleBankService();
  sampServ.printBankName();
  sampServ.openAccount("Suraj Rana", 5000);
  double balance = sampServ.checkBalance("ACC001");
  print("Balance returned: $balance");

  sampServ.printStatement("ACC001");
  sampServ.closeAccount("ACC001");

  print("");
  BankService service  = SimpleBankService();
  service.printBankName();
  service.openAccount("Rana ", 30000);
  double bal = service.checkBalance("ACC002");
  print("Balance returned: $bal");
  service.printStatement("ACC-002");
  service.closeAccount("ACC-002");


}