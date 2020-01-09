import 'package:bytebank_alura/widgets/movementCardsList.dart';
import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Essa é sua conta bancaria"),
      ),
      body: MoneyMovementsCardsList(),
    );
  }
}
