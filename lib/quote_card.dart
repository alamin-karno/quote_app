import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  final Function delete;
  QuoteCard({this.quote, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      elevation: 5.0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 18.0,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 1,
              ),
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              '- ' + quote.author,
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            FlatButton.icon(
                onPressed: delete,
                icon: Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
                label: Text(
                  'Delete Quote',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}