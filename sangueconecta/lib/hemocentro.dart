import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'agendamento.dart';

class HemocentroDetailScreen extends StatelessWidget {
  final Uri _url = Uri.parse('https://saude.rs.gov.br/agendamento-para-doacao-de-sangue');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes do Hemocentro'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hemocentro do Estado do Rio Grande do Sul',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 8),
            Text(
              'Horários: 08:00 - 16:00',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Endereço: Av. Bento Gonçalves, 3722 - Porto Alegre - RS',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Telefone: (51) 3339-7323 / (51) 3339-7330',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            InkWell(
              child: Text(
                'Site: saude.rs.gov.br/agendamento-para-doacao-de-sangue',
                style: TextStyle(fontSize: 16, color: Colors.blue, decoration: TextDecoration.underline),
              ),
              onTap: () => _launchURL,
            ),
            SizedBox(height: 24),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red, // Cor de fundo do botão
                onPrimary: Colors.white, // Cor do texto do botão
                padding: EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Borda arredondada
                ),
                minimumSize: Size(double.infinity, 50), // Tamanho mínimo
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ScheduleDonationScreen()));
              },
              child: Text(
                'Agendar Doação',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }

   void _launchURL() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }
}
