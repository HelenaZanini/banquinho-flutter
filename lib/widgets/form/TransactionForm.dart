import 'package:bytebank_alura/widgets/form/TransactionsDropdown.dart';
import 'package:flutter/material.dart';

class TransactionForm extends StatefulWidget {
  @override
  _TransactionForm createState() => _TransactionForm();
}

class _TransactionForm extends State<TransactionForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crie sua Transação'),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          children: <Widget>[
            TransactionsDropdown()
            
          ],
        ),
      ),
    );
  }
}
