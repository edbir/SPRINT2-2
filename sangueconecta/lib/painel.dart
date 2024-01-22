import 'package:flutter/material.dart';
import 'questionario1.dart'; // Import the QuestionElegibScreen file

class RedButton extends StatelessWidget {
  final String buttonText;

  RedButton({required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360.0,
      child: ElevatedButton(
        onPressed: () {
          handleButtonPress(context);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 255, 17, 0),
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 22.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  void handleButtonPress(BuildContext context) {
    print('$buttonText Button Pressed!');

    // Navigate to QuestionElegibScreen if the button is "Verifique sua Elegibilidade"
    if (buttonText == 'Verifique sua Elegibilidade') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => QuestionElegibScreen(),
        ),
      );
    }
    // Add other conditions for different button texts if needed
  }
}

class RedButtonColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        RedButton(
          buttonText: 'Verifique sua Elegibilidade',
        ),
        SizedBox(height: 50.0),
        RedButton(
          buttonText: 'Localize pontos de doação',
        ),
        SizedBox(height: 50.0),
        RedButton(
          buttonText: 'Conteúdos e Compartilhamento',
        ),
      ],
    );
  }
}
