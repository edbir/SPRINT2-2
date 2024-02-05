import 'package:flutter/material.dart';
import 'cadastro.dart';
import 'painel.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch, // Adicionado para esticar os filhos horizontalmente
            children: <Widget>[
              SizedBox(height: 80), // Espaçamento do topo
              // Substitua pelo caminho do seu logo
              Image.asset('assets/logo.png', height: 120),
              SizedBox(height: 24), // Espaçamento entre logo e título
              Text(
                'Sangue Conecta',
                textAlign: TextAlign.center, // Centralizar texto
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 48), // Espaçamento entre título e campo de e-mail
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'E-mail',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16), // Espaçamento entre campos de texto
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Senha',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 24), // Espaçamento entre campo de senha e botão
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.red, // background (button) color
                  onPrimary: Colors.white, // foreground (text) color
                  padding: EdgeInsets.symmetric(vertical: 12),
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => MainScreen()));
                },
                child: Text(
                  'Entrar',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 16), // Espaçamento entre botão e texto
              TextButton(
                onPressed: () {
                  // Implemente a lógica para esqueci minha senha
                },
                child: Text('Esqueci minha senha'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) => SignUpScreen()));
                },
                child: Text('Não tem conta? Cadastre-se'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
