import 'package:flutter/material.dart';
import 'hemocentro.dart';

class MapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mapa de Locais'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => HemocentroDetailScreen()));
        },
        child: Column(
          children: [
            Expanded(
              child: Image.asset('assets/mapa.png'),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Clique no local desejado'),
            ),
          ],
        ),
      ),
    );
  }
}
