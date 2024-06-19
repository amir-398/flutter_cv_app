import 'package:flutter/material.dart';

class CompetenceScreen extends StatelessWidget {
  const CompetenceScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Compétence'),
        backgroundColor:
            Colors.teal, // Changez la couleur de l'app bar si nécessaire
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text('Logiciels',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  listImage('images/ps.png', 'Photoshop'),
                  listImage('images/ai.png', 'Illustrator'),
                  listImage('images/figma.png', 'Figma'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text('Web',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  listImage('images/react.png', 'React'),
                  listImage('images/vue.png', 'Vue'),
                  listImage('images/html.png', 'HTML5'),
                  listImage('images/js.png', 'JavaScript'),
                  listImage('images/postgre.png', 'Postgre'),
                  listImage('images/php.png', 'PHP'),
                  listImage('images/css.png', 'Css'),
                  listImage('images/mysql.png', 'Mysql.js'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text('Mobile',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  listImage('images/flutter.png', 'Flutter'),
                  listImage('images/rn.png', 'Unity'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget listImage(String source, String label) {
    return Container(
      width: 90,
      height: 90,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Image.asset(
            source,
            width: 50,
            height: 50,
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(
                fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
