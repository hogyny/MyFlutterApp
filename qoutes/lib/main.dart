import 'package:flutter/material.dart';
import 'package:qoutes/quote.dart';
import 'package:qoutes/quote_card.dart';

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

  /* can ignore this code
  Widget quoteTemplate(numQuote){
    return QuoteCard(numQuote: numQuote);
  }
*/
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
        children: quoteRun.map( (numQuote) {
          return QuoteCard(numQuote: numQuote);
        }).toList(),//to return as list
      ),
    );
  }
}

