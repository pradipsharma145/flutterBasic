import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(MyApp());
}

class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}

class MyApp extends StatelessWidget {

  //  For Show SNACKBAR create the instance of ScaffoldMessengerState...
  final _messangerKey = GlobalKey<ScaffoldMessengerState>();

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      scaffoldMessengerKey: _messangerKey,

      home: Scaffold(

        /********************
         * START, AppBar setup
         * */
        appBar: AppBar(
          title: Text(
            "Random Word",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.deepOrange,


          /********************
           * START, Top Action button
           * Set Alarm, Camera, Alert Icon...
           * */
          actions: [
            IconButton(
              icon: const Icon(Icons.add_alarm_outlined),
              tooltip: 'Show Snackbar',
              onPressed: () {
                _messangerKey.currentState
                    .showSnackBar(SnackBar(content: Text('Alarm icon')));
              },
            ),
            IconButton(
              icon: const Icon(Icons.add_a_photo_outlined),
              tooltip: 'Show Snackbar',
              onPressed: () {
                _messangerKey.currentState
                    .showSnackBar(SnackBar(content: Text('Camera icon')));
              },
            ),
            IconButton(
              icon: const Icon(Icons.add_alert_outlined),
              tooltip: 'Show Snackbar',
              onPressed: () {
                _messangerKey.currentState
                    .showSnackBar(SnackBar(content: Text('Alert icon')));
              },
            )
          ],
          /********************
           * END, Top Action button
           * Set Alarm, Camera, Alert Icon...
           * */


        ),
        /********************
         * END, AppBar setup
         * */


        body: Center(
          child: RandomWords(),
        ),
      ),
    );
  }
}
