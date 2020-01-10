import 'package:bytebank_alura/state/MoneyMovement.dart';

class BankAccount {
  final double initialbalance;
  List<MoneyMovement> _transactionHistory;

  BankAccount({this.initialbalance = 0.0});

  double getBalance () {
    return transactionHistory().fold(this.initialbalance, (prev, curr) {    
      return prev + curr.ammount;
    });
  }

  List<MoneyMovement> transactionHistory () {
    return _transactionHistory;
  }

  void createTransaction (MoneyMovement transaction) {   
    _transactionHistory.add(transaction);
  }
}
