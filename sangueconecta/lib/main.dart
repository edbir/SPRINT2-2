import 'package:flutter/material.dart';
import 'painel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Olá, Nome'),
        ),
        body: Center(
          child: RedButtonColumn(),
        ),
      ),
    );
  }
}
