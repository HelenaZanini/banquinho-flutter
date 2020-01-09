import 'package:bytebank_alura/actions/actionsType.dart';
import 'package:flutter/material.dart';

class TransactionsDropdown extends StatefulWidget {
  @override
  _TransactionsDropdownState createState() => _TransactionsDropdownState();
}

class _TransactionsDropdownState extends State<TransactionsDropdown> {
  String _selectedOption = 'Selecione uma ação';
  List<String> _options = [
    AccountActionstypes.create,
    AccountActionstypes.deposit,
    AccountActionstypes.payment,
    AccountActionstypes.delete
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownButton(
        hint: Text(_selectedOption),
        onChanged: (newSelectedOption) {
          setState(() {
            _selectedOption = newSelectedOption;
          });
        },
        items: _options.map((option) {
          return DropdownMenuItem(
            child: Text(option),
            value: option,
          );
        }).toList(),
        
      ),
    );
  }
}
