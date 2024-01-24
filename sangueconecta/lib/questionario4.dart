import 'package:flutter/material.dart';

class Questionario4Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Infelizmente você não está apto a doar.',
              style: TextStyle(
                fontSize: 32.0,
              ),
            ),
            SizedBox(height: 50.0),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(height: 20.0),
                  Text(
                    'Mas calma, aproveite e olhe nossos conteudos informativos e compartilhe com seus amigos e familiares.',
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
                          print("continuar pressionado");
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 255, 17, 0),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 40.0),
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
