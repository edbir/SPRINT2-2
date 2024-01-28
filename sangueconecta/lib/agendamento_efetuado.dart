import 'package:flutter/material.dart';

// Supondo que essa é a tela inicial do seu aplicativo.
// Se não for, você pode substituir `HomePage()` pelo widget que representa a tela inicial.
import 'painel.dart';

class AppointmentMadeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agendamento Efetuado!'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Icon(
            Icons.check_circle_outline,
            size: 120,
            color: Colors.green,
          ),
          Text(
            'Agendamento efetuado com sucesso!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
          ),
          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red, // background (button) color
                onPrimary: Colors.white, // foreground (text) color
                padding: EdgeInsets.symmetric(vertical: 15),
              ),
              onPressed: () {
                // Aqui você pode navegar para a tela inicial do aplicativo ou qualquer outra tela.
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => RedButtonColumn()),
                  ModalRoute.withName('/'),
                );
              },
              child: Text(
                'Voltar para o início',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Text('Bem-vindo à tela inicial!'),
      ),
    );
  }
}
