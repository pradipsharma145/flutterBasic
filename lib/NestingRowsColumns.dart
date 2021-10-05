import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//  Here we learn the nesting rows and columns concept
//  Link:
//  1. https://flutter.dev/docs/development/ui/layout
//  2. https://flutter.dev/docs/development/ui/layout#nesting-rows-and-columns

class NestingRowsColumns extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /*****
     * DO, Star icons and Review counter text...
     * */
    //  Implement the variable for the stars Row...
    var starsRow = Row(
      children: [
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        const Icon(Icons.star, color: Colors.black),
        const Icon(Icons.star, color: Colors.black),
      ],
    );

    //  Implement the variable for the review counter...
    var strReview = Text(
      '170 Reviews',
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w800,
        fontFamily: 'Raleway',
        letterSpacing: 0.5,
        fontSize: 20,
      ),
    );

    Widget _buildFirstRowStarWithReview() {
      return Container(
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [starsRow, strReview],
          ));
    }

    /*****
     * END, Star icons and Review counter text...
     * */

    /*****
     * Do, Lorem Ipsum dummy text...
     * */
    var strDummyText = Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.all(5),
        child: Text(
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
          textAlign: TextAlign.start,
          style: TextStyle(
              color: Colors.black45, fontFamily: 'Open sans', fontSize: 16),
        ));
    /*****
     * END, Lorem Ipsum dummy text...
     * */

    /*****
     * DO, iconList
     * */
    var columnFirst = Column(
      children: <Widget>[
        Icon(
          Icons.star,
          size: 50,
          color: Colors.deepOrange,
        ),
        Text("First Text"),
        Text("Second Text"),
      ],
    );

    var columnSecond = Column(
      children: <Widget>[
        Icon(
          Icons.star,
          size: 50,
          color: Colors.deepOrange,
        ),
        Text("First Text"),
        Text("Second Text"),
      ],
    );

    var columnThird = Column(
      children: <Widget>[
        Icon(
          Icons.star,
          size: 50,
          color: Colors.deepOrange,
        ),
        Text("First Text"),
        Text("Second Text"),
      ],
    );

    //  Implement the variable with columnFirst, columnSecond, columnThird variable...
    var combineColumn = Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [columnFirst, columnSecond, columnThird],
      ),
    );

    /*****
     * END, iconList
     * */

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Nesting Rows and Columns"),
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              _buildFirstRowStarWithReview(),
              strDummyText,
              combineColumn,
              _buildImageRow(1),
              _buildCard(),
            ],
          ),
        ),
      ),
    );
  }

  //
  Widget _buildDecoratedImage(int imageIndex) => Expanded(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          margin: const EdgeInsets.all(5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.star,
                size: 50,
                color: Colors.deepOrange,
              ),
              Text("Index: $imageIndex"),
            ],
          ),
        ),
      );

  Widget _buildImageRow(int imageIndex) => Row(
        children: [
          _buildDecoratedImage(imageIndex),
          _buildDecoratedImage(imageIndex + 1),
          _buildDecoratedImage(imageIndex + 2),
        ],
      );

  Widget _buildCard() {
    return SizedBox(
      child: Card(
        elevation: 5,
        child: Column(
          children: [
            ListTile(
              title: const Text(
                '1625 Main Street',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: const Text('My City, CA 99984'),
              leading: Icon(
                Icons.restaurant_menu,
                color: Colors.blue[500],
              ),
            ),
            const Divider(),
            ListTile(
              title: const Text(
                '(408) 555-1212',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              leading: Icon(
                Icons.contact_phone,
                color: Colors.blue[500],
              ),
            ),
            ListTile(
              title: const Text('costa@example.com'),
              leading: Icon(
                Icons.contact_mail,
                color: Colors.blue[500],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
