import 'package:flutter/material.dart';

class FormationScreen extends StatelessWidget {
  const FormationScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formation'),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            educationItem(
              'EEMI',
              'images/eemi.png',
              'Bachelor 1 – Chef de projet digital 2 \nBachelor 2 – Développeur web',
            ),
            educationItem(
              'My Digital School',
              'images/mds.png',
              'Bachelor 3 – Concepteurs développeurs d\'applications',
            ),
          ],
        ),
      ),
    );
  }

  Widget educationItem(String institution, String logoPath, String details) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                logoPath,
                width: 50,
                height: 50,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      institution,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      details,
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Divider(
            height: 30,
            thickness: 1,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
