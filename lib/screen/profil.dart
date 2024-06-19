import 'package:flutter/material.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil'),
        backgroundColor:
            Colors.teal, // Changez la couleur de l'app bar si nécessaire
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              color: Colors.tealAccent, // Une couleur plus douce pour l'en-tête
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Amir Meberbeche',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  ClipOval(
                    child: Image.asset(
                      'images/amir.webp', // Assurez-vous que le chemin est correct
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                          onPressed: () => {},
                          icon: const Icon(Icons.facebook, color: Colors.blue)),
                      IconButton(
                          onPressed: () => {},
                          icon: const Icon(Icons.facebook, color: Colors.blue)),
                      IconButton(
                          onPressed: () => {},
                          icon: const Icon(Icons.facebook, color: Colors.blue)),
                    ],
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(Icons.mail, color: Colors.teal),
                      SizedBox(width: 10),
                      Text('amir.398@hotmail.fr',
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(Icons.phone, color: Colors.teal),
                      SizedBox(width: 10),
                      Text('0123456789', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(Icons.location_city, color: Colors.teal),
                      SizedBox(width: 10),
                      Text('56 moon space', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(Icons.home, color: Colors.teal),
                      SizedBox(width: 10),
                      Text('www.amirmeberbeche.com',
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(Icons.info, color: Colors.teal),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          'Développeur web, fan d\'astronomie et de basket-ball.',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
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
