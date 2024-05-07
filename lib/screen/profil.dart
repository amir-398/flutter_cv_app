import 'package:flutter/material.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
          Container(
            color: const Color.fromARGB(149, 219, 152, 148),
            height: 250, // Modifié pour avoir assez d'espace pour l'image
            width: double.infinity,
            child: Column(
              // Changé à Column pour une meilleure structuration des widgets
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Amir Meberbeche',
                  style: TextStyle(
                    fontSize: 30,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20, // Réduit l'espace entre le texte et l'image
                ),
                ClipOval(
                  child: Image.asset(
                    'images/amir.webp', // Assurez-vous que le chemin est correct
                    height: 100, // Ajustez la taille selon vos besoins
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    IconButton(onPressed: () => {}, icon: Icon(Icons.twitter)),
                    IconButton(onPressed: () => {}, icon: Icon(Icons.facebook)),
                    IconButton(onPressed: () => {}, icon: Icon(Icons.facebook)),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
              height: 200,
              child: ListView(children: const [
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('+33 1 02 03 04 05'),
                  subtitle: Text('Subtitle 1'),
                )
              ])),
        ]));
  }
}
