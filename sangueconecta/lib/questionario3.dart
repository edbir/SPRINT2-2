import 'package:flutter/material.dart';
import 'questionario4.dart'; // substitui esse import e o redirecionamento do botão para a tela do mapa ao inves de questionario4

class Questionario3Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
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
            SizedBox(height: 50.0),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Você está apto a doar!',
                    style: TextStyle(
                      fontSize: 26.0,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Verifique os locais de doação e agende uma doação.',
                    style: TextStyle(
                      fontSize: 22.0,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Positioned(
              bottom: 6.0,
              child: Container(
                width: 360.0,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to Questionario3Screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Questionario4Screen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 255, 17, 0),
                    padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  child: Text(
                    'Continuar',
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
