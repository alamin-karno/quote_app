import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home: Quotes(),
));


class Quotes extends StatefulWidget {
  @override
  _QuotesState createState() => _QuotesState();
}


class _QuotesState extends State<Quotes> {

  List<Quote> quotes = [
    Quote(text: 'Be who you are and say what you feel, because those who mind don’t matter and those who matter don’t mind.', author: 'Bernard M. Baruch'),
    Quote(text: 'We must not allow other people’s limited perceptions to define us.', author: 'Virginia Satir'),
    Quote(text: 'Do what you can, with what you have, where you are.', author: 'Theodore Roosevelt'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Card'),
        centerTitle: true,
        backgroundColor: Colors.red[500],
      ),
      body: Center(
        child: Column(
          children: quotes.map((quote) => QuoteCard(
            quote: quote,
            delete: (){
              setState(() {
                quotes.remove(quote);
              });
            }
          )).toList(),
        ),
      ),
    );
  }
}







