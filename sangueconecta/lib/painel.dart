import 'package:flutter/material.dart';
import 'questionario1.dart'; // Import the QuestionElegibScreen file
import 'mapa.dart'; // Import the QuestionElegibScreen file
import 'noticias.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0), // Mantém o padding igual ao da tela de cadastro
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 16), // Espaçamento no topo
              CircleAvatar(
                radius: 50, // Tamanho do círculo
                backgroundColor: Colors.purple, // Cor do background do CircleAvatar
                child: Icon(
                  Icons.person,
                  size: 50,
                  color: Colors.white, // Cor do ícone
                ),
              ),
              SizedBox(height: 16), // Espaçamento entre o avatar e o texto
              Text(
                'Olá, Maria',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 32), // Espaçamento entre o texto e o primeiro botão
              // Repita o mesmo para os outros botões
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  onPrimary: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 32),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minimumSize: Size(double.infinity, 50), // Largura máxima
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => QuestionElegibScreen(),
                    ),
                  );
                },
                child: Text(
                  'Verifique sua Elegibilidade',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  onPrimary: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 32),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minimumSize: Size(double.infinity, 50), // Largura máxima
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SelectHemocentroScreen(),
                    ),
                  );
                },
                child: Text(
                  'Localize os pontos de doação',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  onPrimary: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 32),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minimumSize: Size(double.infinity, 50), // Largura máxima
                ),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => NewsScreen(),
                      ),
                    );
                },
                child: Text(
                  'Conteúdos e Compartilhamento',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
