import 'package:flutter/material.dart';
import 'package:qoutes/quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote numQuote;
  QuoteCard({this.numQuote});

  @override
  Widget build(BuildContext context) {
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
}
