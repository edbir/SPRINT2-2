import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Esta seria uma lista de objetos ou mapas contendo dados de notícias.
    // Substituído aqui por uma representação estática para demonstração.
    List<Map<String, dynamic>> newsItems = [
      {
        'title': 'Doação de sangue mobiliza funcionários',
        'date': '05 de jul de 2023',
        'source': 'GauchaZH',
        'readTime': '4 min de leitura',
        'image': 'assets/news_image_1.png' // substitua pelos caminhos de imagem reais
      },
      {
        'title': 'OCERGS promove evento de doação de sangue',
        'date': '29 de jun de 2023',
        'source': 'GauchaZH',
        'readTime': '4 min de leitura',
        'image': 'assets/news_image_2.png' // substitua pelos caminhos de imagem reais
      },
      // Adicione mais notícias conforme necessário
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Notícias'),
      ),
      body: ListView.builder(
        itemCount: newsItems.length,
        itemBuilder: (context, index) {
          var newsItem = newsItems[index];
          return Card(
            margin: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image.asset(newsItem['image']), // Imagem da notícia
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        newsItem['title'],
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '${newsItem['date']} - ${newsItem['source']} - ${newsItem['readTime']}',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      // Adicione os ícones de ação conforme necessário
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
