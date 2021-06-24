import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

//  Here we learn scrolling list view with the concept of Stateless Widget...
class ScrollingListView extends StatelessWidget {
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
  final _suggestions = <WordPair>[];
  final _biggerFont = TextStyle(fontSize: 18);

  // #doListViewBuilder _buildSuggestions
  Widget _buildSuggestions() {
    return ListView.builder(
        itemCount: 50,
        padding: const EdgeInsets.all(16.0),
        itemBuilder: /*1*/ (context, i) {
          if (i.isOdd) return const Divider();
          /*2*/
          final index = i ~/ 2; /*3*/
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10)); /*4*/
          }
          return _buildRow(_suggestions[index], index);
        });
  }

  // #endListViewBuilder _buildSuggestions

  // #doListView Row _buildRow
  Widget _buildRow(WordPair pair, int index) {
    return ListTile(
      title: Text(
        index.toString() + "       " + pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }

  // #endListView Row _buildRow

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scrolling list view'),
      ),
      body: _buildSuggestions(),
    );
  }
}
