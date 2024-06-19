import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Infos +'),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            infoItem(
              'Fan de basket-ball',
              'images/basket.jpg',
              'J\'ai toujours été passionné par le basket-ball. J\'ai joué dans différentes équipes locales et je suis un fervent supporter de la NBA. J\'aime regarder les matchs et analyser les stratégies des différentes équipes.',
            ),
            const SizedBox(height: 20),
            infoItem(
              'Passionné de l\'astronomie',
              'images/astronomie.jpg',
              'L\'astronomie est une de mes passions depuis l\'enfance. J\'aime passer des nuits à observer les étoiles et les planètes avec mon télescope. Je suis également membre d\'un club d\'astronomie local où nous partageons nos observations et connaissances.',
            ),
          ],
        ),
      ),
    );
  }

  Widget infoItem(String title, String imagePath, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imagePath,
          width: double.infinity,
          height: 200,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          description,
          style: const TextStyle(fontSize: 16),
        ),
        const Divider(
          height: 30,
          thickness: 1,
          color: Colors.grey,
        ),
      ],
    );
  }
}
