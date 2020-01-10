import 'package:bytebank_alura/widgets/accountDashboard/BalanceDashboard.dart';
import 'package:bytebank_alura/widgets/accountDashboard/ProductDashboard.dart';
import 'package:bytebank_alura/widgets/movementCardList.dart';
import 'package:flutter/material.dart';

class AccountDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Essa é sua conta bancaria"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            BalanceDashboard(),
            ProductDashboard(),
            MoneyMovementsCardList(),
          ],
        ),
      ),
    );
  }
}
