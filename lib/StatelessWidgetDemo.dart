import 'package:flutter/material.dart';

class StatelessWidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stateless Widget Demo"),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 8.0),
              DogName("Hello"),
              SizedBox(height: 8.0),
              DogName("World"),
              SizedBox(height: 8.0),
              DogName("Duggu"),
              SizedBox(height: 8.0),
              titleSection
            ],
          ),
        ),
      ),
    );
  }
}

Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        /*1*/
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*2*/
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'Oeschinen Lake Campground',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Kandersteg, Switzerland',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
      /*3*/
      Icon(
        Icons.star,
        color: Colors.red[500],
      ),
      const Text('41'),
    ],
  ),
);

class DogName extends StatelessWidget {
  final String strName;

  DogName(this.strName);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: Colors.lightBlueAccent),
      child: Padding(padding: const EdgeInsets.all(15), child: Text(strName)),
    );
  }
}
