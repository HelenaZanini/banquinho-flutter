import 'package:bytebank_alura/widgets/accountDashboard/AccountDashboard.dart';
import 'package:bytebank_alura/widgets/form/TransactionForm.dart';
import 'package:bytebank_alura/widgets/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Byte Bank',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(title: 'Movimentações'),
        '/account': (context) => AccountDashboard(),
        '/transaction-form': (context) => TransactionForm(),
      },
    );
  }
}
