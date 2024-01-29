import 'package:flutter/material.dart';
import 'hemocentro.dart';

class SelectHemocentroScreen extends StatelessWidget {
  final List<String> hemocentros = [
    'Hemocentro do Estado do Rio Grande do Sul',
    'Hemocentro de São Paulo',
    'Hemocentro do Estado de Minas Gerais',
    // Adicione mais hemocentros conforme necessário
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selecione um Hemocentro'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context), // Este botão permite retornar à tela anterior
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: ListView.builder(
          itemCount: hemocentros.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(hemocentros[index]),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => HemocentroDetailScreen(),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
