import 'package:flutter/material.dart';
import 'questionario2.dart';

class QuestionElegibScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Questionário de Elegibilidade'),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // SizedBox(height: 20.0),
                // Text(
                //   'Questionário de Elegibilidade',
                //   style: TextStyle(
                //     fontSize: 30.0,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
                SizedBox(height: 60.0),
                Image.asset(
                  'assets/logo.png',
                  width: 240.0,
                  height: 240.0,
                ),
                Text(
                  'SangueConecta',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 100.0),
                Text(
                  'Verifique se você está apto a doar',
                  style: TextStyle(
                    fontSize: 22.0,
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 20.0,
              child: Container(
                width: 360.0, // Set the width of the button
                child: ElevatedButton(
                  onPressed: () {
                    // Handle "Próximo" button press
                    handleButtonPress(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 255, 17, 0),
                    padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  child: Text(
                    'Próximo',
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
    );
  }

  void handleButtonPress(BuildContext context) {
   // print('$buttonText Button Pressed!');

    // Navigate to QuestionElegibScreen if the button is "Verifique sua Elegibilidade"
    //if (buttonText == 'Verifique sua Elegibilidade') {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Questionario2Screen(),
      ),
    );
    //}
    // Add other conditions for different button texts if needed
  }
}
