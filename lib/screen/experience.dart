import 'package:flutter/material.dart';

class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expériences'),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            experienceItem(
                'Bahy',
                'images/bahy.png',
                'Bahy.fr',
                'Développeur Full Stack (2023-actuellement)',
                'Participation au développement et à la maintenance de diverses applications web. Collaboration avec les équipes de design et de backend pour implémenter des fonctionnalités modernes et responsives.'),
            experienceItem(
              'Portfolio',
              'images/amir.png',
              'Développeur web',
              'Création et maintenance de mon portfolio personnel pour présenter mes projets et compétences.',
              'Utilisation de technologies telles que HTML, CSS, JavaScript, et Flutter pour le développement du site.',
            ),
            experienceItem(
              'Frienddly',
              'images/frienddly.png',
              'Développeur web',
              'Développement de fonctionnalités front-end et back-end pour une plateforme de réseaux sociaux. Amélioration de l\'expérience utilisateur et optimisation des performances.',
              'Mise en œuvre de solutions innovantes pour répondre aux besoins des utilisateurs et garantir la scalabilité de l\'application.',
            ),
          ],
        ),
      ),
    );
  }

  Widget experienceItem(String company, String logoPath, String title,
      String description, String additionalInfo) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                logoPath,
                width: 50,
                height: 50,
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    company,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(description),
          if (additionalInfo.isNotEmpty) ...[
            const SizedBox(height: 5),
            Text(additionalInfo),
          ],
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
