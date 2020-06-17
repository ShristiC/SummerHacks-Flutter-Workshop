import 'package:flutter/material.dart';
import './HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My First Flutter App",
      home: HomePage(
        "First App",
      ),
    );
  }
}