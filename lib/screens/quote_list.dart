import 'package:flutter/material.dart';
import '../models/quote.dart';
import '../widgets/quote_card.dart';

class QuotesList extends StatefulWidget {
  const QuotesList({super.key});

  @override
  State<QuotesList> createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {
  List<Quote> quotes = [
    Quote(
        text: "Be yourself; everyone else is already taken.",
        author: "~Oscar Wilde"),
    Quote(
        text: "Do what you can, with what you have, where you are.",
        author: "~Theodore Roosevelt"),
    Quote(text: "Broken Crayons still colour.", author: "~Fave"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Awesome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.red[400],
      ),
      body: ListView(
        children: quotes
            .map((quote) => QuoteCard(
                quote: quote,
                delete: () {
                  setState(() {
                    quotes.remove(quote); // This deletes the quote
                  });
                }))
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        },
        backgroundColor: Colors.red[400],
        child: const Icon(Icons.add),
      ),
    );
  }
}
