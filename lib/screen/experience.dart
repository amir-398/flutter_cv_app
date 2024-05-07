import 'package:flutter/material.dart';

class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: const EdgeInsets.all(30),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                  height: 200,
                  child: ListView(children: const [
                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text('Data.gouv.fr'),
                      subtitle: Text('Data.analyst (2021) - Paris'),
                    ),
                    ListTile(
                      leading: Icon(Icons.mail_outline),
                      title: Text('Item 1'),
                      subtitle: Text('Subtitle 1'),
                    ),
                    ListTile(
                      leading: Icon(Icons.phone),
                      title: Text('+33 1 02 03 04 05'),
                      subtitle: Text('Subtitle 1'),
                    )
                  ])),
            ]));
  }

  Container listImage(String source) {
    return Container(
        margin: const EdgeInsets.only(right: 10), child: Image.asset(source));
  }
}
