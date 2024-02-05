import 'package:flutter/material.dart';
import 'questionario2.dart';

class QuestionElegibScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Questionário de Elegibilidade'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
              width: 240.0,
              height: 240.0,
            ),
            SizedBox(height: 24.0),
            Text(
              'SangueConecta',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 24.0),
            Text(
              'Verifique se você está apto a doar',
              style: TextStyle(
                fontSize: 22.0,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 48.0),
            ElevatedButton(
              onPressed: () => handleButtonPress(context),
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
                'Próximo',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void handleButtonPress(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Questionario2Screen(),
      ),
    );
  }
}
