class Transaction {
  String transactionId;
  double amount;
  String date;

  Transaction({
    required this.transactionId,
    required this.amount,
    required this.date,
  });

  void describe() {
    print("Transaction ID : $transactionId");
    print("Amount : $amount");
    print("Date: $date");
  }
}



class DepositTransaction extends Transaction {
  DepositTransaction({
    required String transactionId,
    required double amount,
    required String date,
  }): super(
          transactionId: transactionId,
          amount: amount,
          date: date,
     );

  @override
  void describe() {
    super.describe();                    // cit alls Transaction.describe() first
    print("Type: Deposit");
  }
}



class WithdrawalTransaction extends Transaction {
  WithdrawalTransaction({
    required String transactionId,
    required double amount,
    required String date,
  }): super(
          transactionId: transactionId,
          amount: amount,
          date: date,
    );

  @override
  void describe() {
    super.describe();                    
    print("Type: Withdrawal");
  }
}


class TransferTransaction extends DepositTransaction {
  String toAccount;

  TransferTransaction({
    required String transactionId,
    required double amount,
    required String date,
    required this.toAccount,
  }): super(
          transactionId: transactionId,
          amount: amount,
          date: date,
  );

  @override
  void describe() {
    super.describe();                    

    print("Transferred to : $toAccount");
  }
}

void main(){
  List<Transaction> trans =[
    DepositTransaction(transactionId: "t1s1456", amount: 200000, date: "2082-12-29"),
    WithdrawalTransaction(transactionId: "s1a155", date: "2082-12-12", amount: 3506000, ),
    TransferTransaction(transactionId: "d1f1230", amount: 1568000, toAccount: "Suraj Rana", date: "2082-11-11", )
   ];

   for (int i =0;i<trans.length;i++){
    print("");
    trans[i].describe();
   }
   print("");
}