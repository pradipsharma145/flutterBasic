import 'package:flutter/material.dart';

class ExpandedDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var titleSection = Container(
      margin: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Oeschinen Lake Campground',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text('Kandersteg, Switzerland'),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.ac_unit),
                Text("1"),
              ],
            ),
          ),
        ],
      ),
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Layout Demo"),
          backgroundColor: Colors.cyan,
        ),
        body: Column(
          children: [titleSection],
        ),
      ),
    );
  }
}
