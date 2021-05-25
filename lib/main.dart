import 'package:flutter/material.dart';
import 'package:ikiya/main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IKIYA',
      theme: ThemeData(),
      home: MainScreen(),
    );
  }
}