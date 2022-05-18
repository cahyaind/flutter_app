import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home/home.dart';
import 'spalsh.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Splash());
  }
}
