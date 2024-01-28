import 'package:flutter/material.dart';
import 'painel.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(labelText: 'Primeiro nome'),
            ),
            // Adicione mais campos de texto para sobrenome, email, senha, etc...
            ElevatedButton(
              child: Text('Cadastrar'),
              onPressed: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => RedButtonColumn())),
            ),
          ],
        ),
      ),
    );
  }
}
