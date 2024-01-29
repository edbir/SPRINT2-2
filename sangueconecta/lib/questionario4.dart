import 'package:flutter/material.dart';
import 'noticias.dart'; // Assegure-se de que o import esteja correto

class Questionario4Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Status da Elegibilidade'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Infelizmente você não está apto a doar.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 24.0),
            Text(
              'Mas calma, aproveite e olhe nossos conteúdos informativos e compartilhe com seus amigos e familiares.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22.0,
              ),
            ),
            SizedBox(height: 48.0),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => NewsScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.red, // Cor de fundo do botão
                onPrimary: Colors.white, // Cor do texto do botão
                padding: EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Borda arredondada
                ),
                minimumSize: Size(double.infinity, 50), // Tamanho mínimo
              ),
              child: Text(
                'Ver Notícias',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
