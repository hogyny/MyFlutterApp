import 'package:flutter/material.dart';
import 'package:qoutes/quote.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList() ,
  ));
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quoteRun = [
    Quote(author: 'Hogyny Hoi', text: 'To him All belongs to' ) ,// from quote.dart file class
    Quote(author: 'Hogyny Hoi', text: 'To him All belongs to' ),
    Quote(author: 'Hogyny Hoi', text: 'To him All belongs to' ),
  ];

  Widget quoteTemplate(numQuote){
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding (
        padding: const EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              numQuote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 6.0,),
            Text(
              numQuote.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[900],
              ),
            ),
          ],
        ),
    ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Best Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column( //map function will be used because it can all input and create widget for each
        children: quoteRun.map( (numQuotes) {
          return quoteTemplate(numQuotes);
        }).toList(),//to return as list
      ),
    );
  }
}

//main stop
// the class file is below

class Quote {
  String text;
  String author;

  //Quote({String text, String author}){ //contructor of the class, the cully braces act as naming parameter.
   // this.text = text;
   // this.text = author;
  //}
    Quote({this.text, this.author}); //using naming parathesis

}

//Quote myquote = Quote(text:'' , author: '');
