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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                        onPressed: () => {}, icon: const Icon(Icons.facebook)),
                    IconButton(
                        onPressed: () => {}, icon: const Icon(Icons.facebook)),
                    IconButton(
                        onPressed: () => {}, icon: const Icon(Icons.facebook)),
                  ],
                )
              ],
            ),
          ),
          const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 20),
                Row(children: [
                  Icon(Icons.mail),
                  Text('amir.398@hotmail.fr', style: TextStyle(fontSize: 20)),
                ]),
                SizedBox(height: 20),
                Row(children: [
                  Icon(Icons.phone),
                  Text('0123456789'),
                ]),
                SizedBox(
                    height:
                        20), // Ajout d'un espace entre les lignes (facultatif
                Row(children: [
                  Icon(Icons.location_city),
                  Text('56 moon space'),
                ]),
                SizedBox(height: 20),
                Row(children: [
                  Icon(Icons.home),
                  Text('www.amirmeberbeche.com'),
                ]),
                SizedBox(height: 20),
                Row(children: [
                  Icon(Icons.usb_rounded),
                  Text(
                      'description de moi même: fan d\'espace et de technologie '),
                ]),
              ]),
        ]));
  }
}
