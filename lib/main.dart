import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(const MaterialApp(home: QuotesList()));
}

class QuotesList extends StatefulWidget {
  const QuotesList({super.key});

  @override
  State<QuotesList> createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {
  List<Quote> quotes = [
    Quote(
        text: "Be yourself; everyone else is already taken",
        author: "Oscar Wild"),
    Quote(
        text: "Do what you can, with what you have, where you are.",
        author: "Theodore Roosevelt"),
    Quote(text: "Broken Crayons still colour", author: "Fave")
  ];

  Widget quoteTemplate(quote) {
    return Card(
      margin: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            quote.text,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.grey[400],
            ),
          ),
          const SizedBox(height: 6.0),
          Text(
            quote.author,
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.grey[800],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[400],
        appBar: AppBar(
          title: const Text("Awesome Quotes"),
          centerTitle: true,
          backgroundColor: Colors.red[400],
        ),
        body: Column(
          children: quotes.map((quote) => quoteTemplate(quote)
          ).toList(),
        ));
  }
}
