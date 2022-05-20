import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Center(
        child: Text('INI HOME',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 23,
            )),
      ),
    );
  }
}
