import 'package:flutter/material.dart';

class MoneyMovement {
  final String ammount;
  final String movementType;
  final String name;

  MoneyMovement(this.ammount, this.movementType, this.name);
}

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

class MoneyMovementsCardsList extends StatelessWidget {
  final List<MoneyMovement> movementCardsList = [
    MoneyMovement("10", "Compra Débito", "Banca das Frutas"),
    MoneyMovement("40", "Compra Débito", "Restaurante Bom Tompero"),
    MoneyMovement("10", "Transferencia", "Amelia Luci"),
    MoneyMovement("2200", "Crédito Salário", "Cia X"),
    MoneyMovement("950", "Pagamento Boleto", "Imobiliaria")
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: movementCardsList.length,
        itemBuilder: (_, index) {
          return MoneyMovementCard(
              ammount: movementCardsList[index].ammount,
              movementType: movementCardsList[index].movementType,
              name: movementCardsList[index].name);
        },
      ),
    );
  }
}
