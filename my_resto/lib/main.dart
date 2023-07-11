import 'package:flutter/material.dart';
import 'package:my_resto/screens/navbar.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyResto',
      home: navbar(),
    );
  }
}
