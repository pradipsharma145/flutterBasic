import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          shadowColor: Colors.blueGrey,
          title: Text("Learn Row Basics"),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              width: 100,
              margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.amber),
              child: Text("One",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      decoration: TextDecoration.lineThrough)),
            ),
            Container(
                width: 100,
                margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.pink),
                child: Text("Two",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 25))),
            Container(
              width: 100,
              margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.teal),
              child: Text("Three",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 25)),
            )
          ],
        ),
      ),
    );
  }
}
