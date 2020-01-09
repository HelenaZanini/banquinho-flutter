import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String title;

  const HomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      drawer: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Create Money Transactions"),
          Text("See Account"),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          RaisedButton(
            child: Text("Create Money Transactions"),
            onPressed: () {
              Navigator.pushNamed(context, '/transaction-form');
            },
          ),
          RaisedButton(
            child: Text("See Account"),
            onPressed: () {
              Navigator.pushNamed(context, '/account');
            },
          ),
        ],
      ),
    );
  }
}
