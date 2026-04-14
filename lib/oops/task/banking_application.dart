// abstraction: - Create an abstract class BankOperation with abstract methods: execute() and getDescription() that 
// returns a String. - Create three concrete classes that extend BankOperation: DepositOperation, WithdrawOperation, 
// TransferOperation. Each implements execute() to carry out the action and getDescription() to return a 
// short description string. - When a user performs a deposit, withdrawal, or transfer from the menu, create the corresponding 
// BankOperation object and call execute() on it. 
import 'dart:io';

class Account {
  String _accountNumber;
  String _pin;
  double _balance;
  final List<String> _transactionHistory = [];
 

  String get accountNumber => _accountNumber;
 
  Account({
    required String accountNumber,
    required String pin,
    required double initialDeposit,
  }): _accountNumber = accountNumber,
        _pin = pin,
        _balance = initialDeposit {
    _transactionHistory.add("Account opened with Rs.$initialDeposit");
  }



//   bool verifyPin(String input) {
//     return  input == _pin;
//   }  
bool verifyPin(String input) => input == _pin;
 
  void deposit(double amount) {
    if (amount <= 0) {
      print("  Deposit amount must be greater than 0.");
      return;
    }
    _balance += amount;
    _transactionHistory.add("Deposited  : +Rs.$amount | Balance: $_balance");
    print("  Rs.$amount deposited successfully.");
  }
 
  
  void withdraw(double amount) {
    if (amount <= 0) {
      print("  Withdrawal amount must be positive.");
      return;
    }
    if (amount > _balance) {
      print("  Insufficient funds. Balance: $_balance");
      return;
    }
    _balance -= amount;
    _transactionHistory.add("Withdrawn  : -Rs.$amount | Balance: $_balance");
    print("  Rs.$amount withdrawn successfully.");
  }
 
  void transfer(Account target, double amount) {
    if (amount <= 0) {
      print("  Transfer amount must be positive.");
      return;
    }
    if (amount > _balance) {
      print("  Insufficient funds for transfer. Balance: $_balance");
      return;
    }
    _balance -= amount;
    target._balance += amount;
    _transactionHistory
        .add("Transferred: -Rs.$amount to ${target._accountNumber} and Balance is: $_balance");
    target._transactionHistory
        .add("Received!: +Rs.$amount from $_accountNumber and Balance is: ${target._balance}");
    print(
        " Rs.$amount transferred to ${target._accountNumber} successfully.");
  }
 
  double getBalance() => _balance;
 
  void printTransactionHistory() {
    if (_transactionHistory.isEmpty) {
      print("  No transactions yet.");
      return;
    }
    print("  ── Transaction History for $_accountNumber ──");
    for (int i = 0; i < _transactionHistory.length; i++) {
      print("  ${i + 1}. ${_transactionHistory[i]}");
    }
  }
 
  // this is overridden by subclasses :polymorphism
  void accountInfo() {
    print("  Type: Basic Account");
    print("  Number : $_accountNumber");
    print("  Balance: Rs.$_balance");
  }
}





//=========================================================================================
abstract class BankOperation{
    String getDescription();
    void execute();

    
}

//concrete operation :deposit, withdraw, transfer
class DepositOperation extends BankOperation {
  final Account _account;
  final double _amount;
 
  DepositOperation(this._account, this._amount);
 
  @override
  void execute() {
    _account.deposit(_amount);
  }
 
  @override
  String getDescription() {
    return "Deposit of Rs.$_amount";
  }
}

class WithdrawOperation extends BankOperation {
  final Account _account;
  final double _amount;
 
  WithdrawOperation(this._account, this._amount);
 
  @override
  void execute() {
    _account.withdraw(_amount);
  }
 
  @override
  String getDescription() {
    return "Withdrawal of Rs.$_amount";
  }
}


class TransferOperation extends BankOperation {
  final Account _from;
  final Account _to;
  final double _amount;
 
  TransferOperation(this._from, this._to, this._amount);
 
  @override
  void execute() {
    _from.transfer(_to, _amount);
  }
 
  @override
  String getDescription() =>
      "Transfer of Rs.$_amount to ${_to.accountNumber}";
}








//=============================================================================================

class SavingsAccount extends Account {
  double minimumBalance;
 
  SavingsAccount({
    required String accountNumber,
    required String pin,
    required double initialDeposit,
    required this.minimumBalance,
  }) : super(
          accountNumber: accountNumber,
          pin: pin,
          initialDeposit: initialDeposit,
        );
 
  @override
  void withdraw(double amount) {
    if (amount <= 0) {
      print("  Withdrawal amount must be positive.");
      return;
    }
    if (getBalance() - amount < minimumBalance) {
      print(
          "  Cannot withdraw. Balance cannot fall below minimum Rs.$minimumBalance");
      return;
    }
    // call parent withdraw after our check passes
    super.withdraw(amount);
  }
 
  void applyInterest() {
    double interest = getBalance() * 0.03;
    deposit(interest);
    print("  3% interest applied: +Rs.$interest");
  }
 
  @override
  void accountInfo() {
    print("  Type          : Savings Account");
    print("  Number        : $accountNumber");
    print("  Balance       : Rs.${getBalance()}");
    print("  Minimum Bal   : Rs.$minimumBalance");
  }
}






//====================================================================================
class CurrentAccount extends Account {
  double overdraftLimit;
 
  CurrentAccount({
    required String accountNumber,
    required String pin,
    required double initialDeposit,
    required this.overdraftLimit,
  }): super(
          accountNumber: accountNumber,
          pin: pin,
          initialDeposit: initialDeposit,
        );
 
  @override
  void withdraw(double amount) {
    if (amount <= 0) {
      print("Withdrawal amount must be positive.");
      return;
    }
    if (getBalance() - amount < -overdraftLimit) {
      print(
          "Overdraft limit exceeded. Overdraft limit: Rs.$overdraftLimit");
      return;
    }
    // it bypass parent check : we allow negative balance
    super.withdraw(amount);
  }
 
  void applyMaintenanceFee() {
    print("Applying Rs.200 monthly maintenance fee...");
    withdraw(200);
  }
 
  @override
  void accountInfo() {
    print("  Type: Current Account");
    print("  Number: $accountNumber");
    print("  Balance: Rs.${getBalance()}");
    print("  Overdraft Lmt : Rs.$overdraftLimit");
  }
}







//=======================================================================================================
// Additional Requirements: - Account numbers should be auto-generated (e.g. "ACC001", "ACC002", etc.). - Use a while loop with stdin.readLineSync() to keep the menu running until the user chooses Exit. - Handle invalid menu inputs gracefully by printing "Invalid option, please try again". - A user must be logged in to access account operations. Attempting to access the account menu 
// without login should redirect to the main menu. - The transfer feature should ask for the target account number and amount, find the account in the list, 
// and perform the transfer only if the target exists.



// auto-generate account numbers
int _accountCounter = 1;
String generateAccountNumber() {
  String num = "ACC${_accountCounter.toString().padLeft(3, '0')}";
  _accountCounter++;
  return num;
}
 
// : polymorphism
List<Account> allAccounts = [];
 
// account by number
Account? findAccount(String accountNumber) {
  for (int i = 0; i < allAccounts.length; i++) {
    if (allAccounts[i].accountNumber == accountNumber) {
      return allAccounts[i];
    }
  }
  return null;
}








void applyMonthlyUpdate() {
  print("\n  ── Applying Monthly Update to All Accounts ──");
  for (int i = 0; i < allAccounts.length; i++) {
    print("\n  ${allAccounts[i].accountNumber}:");
    if (allAccounts[i] is SavingsAccount) {
      (allAccounts[i] as SavingsAccount).applyInterest();
    }
    if (allAccounts[i] is CurrentAccount) {
      (allAccounts[i] as CurrentAccount).applyMaintenanceFee();
    }
  }
  print("\n  Monthly update complete.");
}
//=================================================================================================
void main() {
  Account? loggedInAccount;

  while (true) {
    if (loggedInAccount == null) {
      print("\n====================================");
      print("       Welcome to Dart Bank         ");
      print("====================================");
      print("  1. Open New Account");
      print("  2. Login to Account");
      print("  3. Apply Monthly Update (Admin)");
      print("  4. Exit");
      print("------------------------------------");
      stdout.write("Choose an option: ");

      String? input = stdin.readLineSync();

      switch (input?.trim()) {
        case "1":
          print("------------------------------------");
          print("  Open New Account");
          print("------------------------------------");

          stdout.write("  Your name: ");
          String? name = stdin.readLineSync();

          stdout.write("  Account type (1 = Savings, 2 = Current): ");
          String? typeInput = stdin.readLineSync();

          stdout.write("  Set a 4-digit PIN: ");
          String? pin = stdin.readLineSync();

          if (pin == null || pin.length != 4 || int.tryParse(pin) == null) {
            print("  Invalid PIN. Must be exactly 4 digits.");
            break;
          }

          stdout.write("  Initial deposit amount: Rs.");
          double? initDeposit = double.tryParse(stdin.readLineSync() ?? "");

          if (initDeposit == null || initDeposit <= 0) {
            print("  Invalid deposit amount.");
            break;
          }

          String accNum = generateAccountNumber();

          if (typeInput?.trim() == "1") {
            stdout.write("  Minimum balance (e.g. 1000): Rs.");
            double? minBal = double.tryParse(stdin.readLineSync() ?? "");
            if (minBal == null || minBal < 0) {
              print("  Invalid minimum balance.");
              break;
            }
            if (initDeposit < minBal) {
              print("  Initial deposit must be at least Rs.$minBal");
              break;
            }
            allAccounts.add(SavingsAccount(
              accountNumber: accNum,
              pin: pin,
              initialDeposit: initDeposit,
              minimumBalance: minBal,
            ));
          } else if (typeInput?.trim() == "2") {
            stdout.write("  Overdraft limit (e.g. 5000): Rs.");
            double? odLimit = double.tryParse(stdin.readLineSync() ?? "");
            if (odLimit == null || odLimit < 0) {
              print("  Invalid overdraft limit.");
              break;
            }
            allAccounts.add(CurrentAccount(
              accountNumber: accNum,
              pin: pin,
              initialDeposit: initDeposit,
              overdraftLimit: odLimit,
            ));
          } else {
            print("  Invalid account type.");
            break;
          }

          print("\n  Account created successfully!");
          print("  Account Number : $accNum");
          print("  Holder         : $name");
          print("  Opening Balance: Rs.$initDeposit");
          print("  Keep your PIN safe!");
          break;

        case "2":
          print("------------------------------------");
          print("  Login to Account");
          print("------------------------------------");

          stdout.write("  Account number: ");
          String? accNumInput = stdin.readLineSync();

          Account? found = findAccount(accNumInput?.trim() ?? "");
          if (found == null) {
            print("  Account not found.");
            break;
          }

          stdout.write("  Enter PIN: ");
          String? pinInput = stdin.readLineSync();

          if (!found.verifyPin(pinInput?.trim() ?? "")) {
            print("  Incorrect PIN.");
            break;
          }

          loggedInAccount = found;
          print("  Login successful! Welcome.");
          break;

        case "3":
          if (allAccounts.isEmpty) {
            print("  No accounts found.");
          } else {
            applyMonthlyUpdate();
          }
          break;

        case "4":
          print("\n  Thank you for using Dart Bank. Goodbye!");
          return;

        default:
          print("  Invalid option, please try again.");
      }

    } else {
      print("\n====================================");
      print("           Account Menu             ");
      print("  Logged in: ${loggedInAccount.accountNumber}");
      print("====================================");
      print("  1. Deposit");
      print("  2. Withdraw");
      print("  3. Check Balance");
      print("  4. View Transaction History");
      print("  5. Transfer to Another Account");
      print("  6. View Account Info");
      print("  7. Logout");
      print("------------------------------------");
      stdout.write("Choose an option: ");

      String? input = stdin.readLineSync();

      switch (input?.trim()) {
        case "1":
          print("------------------------------------");
          stdout.write("  Deposit amount: Rs.");
          double? amount = double.tryParse(stdin.readLineSync() ?? "");
          if (amount == null) {
            print("  Invalid amount.");
            break;
          }
          BankOperation op = DepositOperation(loggedInAccount, amount);
          print("  Operation: ${op.getDescription()}");
          op.execute();
          break;

        case "2":
          print("------------------------------------");
          stdout.write("  Withdrawal amount: Rs.");
          double? amount = double.tryParse(stdin.readLineSync() ?? "");
          if (amount == null) {
            print("  Invalid amount.");
            break;
          }
          BankOperation op = WithdrawOperation(loggedInAccount, amount);
          print("  Operation: ${op.getDescription()}");
          op.execute();
          break;

        case "3":
          print("------------------------------------");
          print("  Current Balance: Rs.${loggedInAccount.getBalance()}");
          break;

        case "4":
          print("------------------------------------");
          loggedInAccount.printTransactionHistory();
          break;

        case "5":
          print("------------------------------------");
          stdout.write("  Target account number: ");
          String? targetNum = stdin.readLineSync();
          

          Account? target = findAccount(targetNum?.trim() ?? "");
          if (target == null) {
            print("  Target account not found.");
            break;
          }
          if (target.accountNumber == loggedInAccount.accountNumber) {
            print("  Cannot transfer to your own account.");
            break;
          }

          stdout.write("  Transfer amount: Rs.");
          double? amount = double.tryParse(stdin.readLineSync() ?? "");
          if (amount == null) {
            print("  Invalid amount.");
            break;
          }

          BankOperation op = TransferOperation(loggedInAccount, target, amount);
          print("  Operation: ${op.getDescription()}");
          op.execute();
          break;

        case "6":
          print("------------------------------------");
          loggedInAccount.accountInfo();
          break;

        case "7":
          print("  Logged out successfully.");
          loggedInAccount = null;
          break;

        default:
          print("  Invalid option, please try again.");
      }
    }
  }
}