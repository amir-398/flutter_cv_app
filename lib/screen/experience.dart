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
                      title: Text('Item 1'),
                      subtitle: Text('Subtitle 1'),
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
              SizedBox(
                  height: 200,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    listImage('assets/img_1.jpg'),
                    listImage('assets/img_2.jpg'),
                    listImage('assets/img_3.jpg'),
                    listImage('assets/img_4.jpg'),
                    listImage('assets/img_5.jpg'),
                    listImage('assets/img_4.jpg'),
                  ])),
              SizedBox(
                  height: 800,
                  child: GridView.count(crossAxisCount: 2, children: [
                    listImage('assets/img_1.jpg'),
                    listImage('assets/img_2.jpg'),
                    listImage('assets/img_3.jpg'),
                    listImage('assets/img_4.jpg'),
                    listImage('assets/img_5.jpg'),
                    listImage('assets/img_4.jpg'),
                  ])),
              const Wrap(spacing: 5, children: [
                Chip(label: Text("Bruxelles")),
                Chip(label: Text("Bruxelles")),
                Chip(label: Text("Bruxelles")),
                Chip(label: Text("Bruxelles")),
                Chip(label: Text("Bruxelles")),
              ])
            ]));
  }

  Container listImage(String source) {
    return Container(
        margin: const EdgeInsets.only(right: 10), child: Image.asset(source));
  }
}
