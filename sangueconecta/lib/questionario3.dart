import 'package:flutter/material.dart';
import 'mapa.dart'; // Substitua pelo caminho correto do arquivo da tela do mapa

class Questionario3Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Elegibilidade Confirmada'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Parabéns',
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 24.0),
            Text(
              'Você está apto a doar!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 26.0,
              ),
            ),
            SizedBox(height: 24.0),
            Text(
              'Verifique os locais de doação e agende uma doação.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22.0,
              ),
            ),
            SizedBox(height: 48.0),
            ElevatedButton(
              onPressed: () {
                // Navegar para a tela do mapa
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SelectHemocentroScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.red, // Cor de fundo do botão
                onPrimary: Colors.white, // Cor do texto do botão
                padding: EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Borda arredondada
                ),
                minimumSize: Size(double.infinity, 50), // Largura máxima
              ),
              child: Text(
                'Continuar',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Certifique-se de que a classe SelectHemocentroScreen esteja implementada e disponível para navegação.
