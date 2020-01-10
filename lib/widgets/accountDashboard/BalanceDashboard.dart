import 'package:flutter/material.dart';

class BalanceDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(64),
      decoration: BoxDecoration(border: Border.all(color: Colors.indigoAccent)),
      child: Text("100"),
    );
  }
}
