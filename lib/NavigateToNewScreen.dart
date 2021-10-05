import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//  In this step, you'll add a new page (called a route in Flutter) that displays the favorites.
//  You'll learn how to navigate between the home route and the new route.
//  Link: https://codelabs.developers.google.com/codelabs/first-flutter-app-pt2#5

class NavigateToNewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RandomWord(),
    );
  }
}

class RandomWord extends StatefulWidget {
  const RandomWord({Key? key}) : super(key: key);

  @override
  _RandomWordState createState() => _RandomWordState();
}

class _RandomWordState extends State<RandomWord> {
  final _suggestions = <WordPair>[]; // array of words
  final _saved = <WordPair>{}; //  list of favourite words

  Widget _buildSuggestion() {
    return ListView.builder(itemBuilder: (context, i) {
      _suggestions.addAll(generateWordPairs().take(10));
      return _buildRow(_suggestions[i], i);
    });
  }

  Widget _buildRow(WordPair pair, int iPosition) {
    final alreadySaved = _saved.contains(pair);

    return ListTile(
      contentPadding: EdgeInsets.all(15),
      title: Text(pair.asPascalCase),
      subtitle: Text(
          "In this step, you'll add a new page (called a route in Flutter) that displays the favorites. You'll learn how to navigate between the home route and the new route."),
      trailing: Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),
      onTap: () {
        print("Pressed position:: $iPosition");
        setState(() {
          if (alreadySaved) {
            _saved.remove(pair);
          } else {
            _saved.add(pair);
          }
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigate to new screen"),
        actions: [
          IconButton(icon: Icon(Icons.list), onPressed: _onListIconPressed),
          IconButton(icon: Icon(Icons.add), onPressed: _onAddIconPressed)
        ],
      ),
      body: _buildSuggestion(),
    );
  }

  void _onListIconPressed() {
    print("_onListIconPressed()...");

    Navigator.of(context).push(
      MaterialPageRoute<void>(
        // NEW lines from here...
        builder: (BuildContext context) {
          final tiles = _saved.map(
            (WordPair pair) {
              return ListTile(
                title: Text(
                  pair.asPascalCase,
                ),
              );
            },
          );
          final divided = tiles.isNotEmpty
              ? ListTile.divideTiles(context: context, tiles: tiles).toList()
              : <Widget>[];

          return Scaffold(
            appBar: AppBar(
              title: Text('Saved Suggestions'),
            ),
            body: ListView(children: divided),
          );
        }, // ...to here.
      ),
    );
  }

  void _onAddIconPressed() {
    print("_onAddIconPressed()...");
  }
}
