import 'package:flutter/material.dart';
import 'cadastro.dart';
import 'painel.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/logo.png'),
            TextFormField(
              decoration: InputDecoration(labelText: 'E-mail'),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'Senha'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Entrar'),
              onPressed: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => RedButtonColumn())),
            ),
            TextButton(
              child: Text('Não tem conta? Cadastre-se'),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => SignUpScreen())),
            ),
          ],
        ),
      ),
    );
  }
}
