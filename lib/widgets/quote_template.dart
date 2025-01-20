import 'package:flutter/material.dart';
import '../models/quote.dart';  

// function that returns a card widget for a single quote
Widget quoteTemplate(Quote quote) {
  return Card(
    margin: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            quote.text,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.grey[800],
            ),
          ),
          const SizedBox(height: 6.0),
          Text(
            quote.author,
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.grey[600],
            ),
          )
        ],
      ),
    ),
  );
}
