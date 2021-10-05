import 'package:flutter/material.dart';

//  In this tutorial we will learn the Column concept with the number of children...
//  Link: https://www.geeksforgeeks.org/row-and-column-widgets-in-flutter-with-example/

class ColumnWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blueGrey,
              shadowColor: Colors.blueGrey,
              title: Text('Learn Column Basics'),
            ),
            body: Container(
              alignment: Alignment.center,
              color: Colors.teal,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.all(15),
                    padding: const EdgeInsets.fromLTRB(30, 5, 30, 5),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              color: Colors.deepOrange,
                              offset: Offset(1, 1))
                        ],
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.amber),
                    child: Text('One',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            decoration: TextDecoration.lineThrough)),
                  ),
                  Container(
                    width: 100,
                    margin: const EdgeInsets.all(15),
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.amber),
                    child: Text('Two',
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
                        color: Colors.amber),
                    child: Text('Three',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            decoration: TextDecoration.lineThrough)),
                  )
                ],
              ),
            )));
  }
}
