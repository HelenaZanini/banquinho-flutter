import 'package:bytebank_alura/state/Account.dart';
import 'package:bytebank_alura/state/MoneyMovement.dart';
import 'package:flutter/material.dart';

class MoneyMovementCard extends StatelessWidget {
  final String ammount;
  final String movementType;
  final String name;

  const MoneyMovementCard({Key key, this.ammount, this.movementType, this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(name),
        subtitle: Text("$movementType - $ammount"),
      ),
    );
  }
}

class MoneyMovementsCardList extends StatelessWidget {
  final List<MoneyMovement> movementCardsList = BankAccount().transactionHistory();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(12),
        decoration:
            BoxDecoration(border: Border.all(color: Colors.indigoAccent)),
        child: ListView.builder(
          padding: EdgeInsets.all(12),
          shrinkWrap: true,
          itemCount: movementCardsList.length,
          itemBuilder: (_, index) {
            return MoneyMovementCard(
                ammount: movementCardsList[index].ammount.abs().toString(),
                movementType: movementCardsList[index].movementType,
                name: movementCardsList[index].name);
          },
        ),
      ),
    );
  }
}
