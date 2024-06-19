import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:url_launcher/url_launcher.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({super.key});

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil'),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              color: Colors.tealAccent,
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
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () => _launchURL(
                              'https://www.linkedin.com/in/amir-meberbeche-337968249/'),
                          child: Image.asset(
                            'images/linkedin.png', // Votre image pour LinkedIn
                            width: 40,
                            height: 40,
                          ),
                        ),
                        const SizedBox(width: 20),
                        GestureDetector(
                          onTap: () =>
                              _launchURL('https://github.com/amir-398'),
                          child: Image.asset(
                            'images/github.png', // Votre image pour GitHub
                            width: 40,
                            height: 40,
                          ),
                        ),
                        const SizedBox(width: 20),
                        GestureDetector(
                          onTap: () => _launchURL('https://www.instagram.com/'),
                          child: Image.asset(
                            'images/ig.png', // Votre image pour GitHub
                            width: 40,
                            height: 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                padding: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: [
                        Icon(Icons.mail, color: Colors.teal),
                        SizedBox(width: 10),
                        Text('amir.398@hotmail.fr',
                            style:
                                TextStyle(fontSize: 18, color: Colors.black)),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Icon(Icons.phone, color: Colors.teal),
                        SizedBox(width: 10),
                        Text('0123456789',
                            style:
                                TextStyle(fontSize: 18, color: Colors.black)),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Icon(Icons.location_city, color: Colors.teal),
                        SizedBox(width: 10),
                        Text('56 moon space',
                            style:
                                TextStyle(fontSize: 18, color: Colors.black)),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Icon(Icons.home, color: Colors.teal),
                        SizedBox(width: 10),
                        Text('www.amirmeberbeche.com',
                            style:
                                TextStyle(fontSize: 18, color: Colors.black)),
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
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
