import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

//  Here we learn scrolling list view with the concept of Stateless Widget and Row Item Selection...
//  Link:: https://codelabs.developers.google.com/codelabs/first-flutter-app-pt2#3
//  Link:: https://github.com/flutter/codelabs/blob/master/startup_namer_null_safety/step5_add_icons/lib/main.dart

class ItemSelectionScrollingListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RandomWords(),
    );
  }
}

class RandomWords extends StatefulWidget {
  const RandomWords({Key? key}) : super(key: key);

  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final _suggestion = <WordPair>[]; //  this list contains word...
  final _saved = <WordPair>{}; //  this list contains saved word...

  Widget _buildSuggestion() {
    return ListView.builder(itemBuilder: (context, i) {
      //  add item in list...
      _suggestion.addAll(generateWordPairs().take(10));

      //  return list view row...
      return _buildRow(_suggestion[i]);
    });
  }

  //  do manage list view row
  Widget _buildRow(WordPair pair) {
    //  check word already in _saved list or not...
    final alreadySaved = _saved.contains(pair);

    //  return list view row...
    return ListTile(
      // padding
      contentPadding: EdgeInsets.all(10),

      //  title
      title: Text(pair.asPascalCase),

      //  subTitle
      subtitle: Text(
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."),

      //  trailing used for set right side icon...
      trailing: Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),

      //  onTap() manage the selection of list view row...
      onTap: () {
        setState(() {
          if (alreadySaved) {
            _saved.remove(pair);
          } else {
            _saved.add(pair);
          }
        });
      },

      //  for longPress selection manage...
      onLongPress: () {
        setState(() {
          print("Long press");
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Item Selection"),
        ),
        body: _buildSuggestion());
  }
}
