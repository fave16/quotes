import 'package:flutter/material.dart';
import '../models/quote.dart'; // Import the Quote model

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  const QuoteCard({required this.quote, required this.delete, super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // Ensure equal width with margin
      height: 200,
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), 
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                quote.text,
                style: const TextStyle(
                  fontSize: 20.0,
                  color: Color.fromARGB(255, 93, 64, 55),
                ),
              ),
              const SizedBox(height: 12), // Reduce spacing for better balance
              Row(
                children: [
                  Text(
                    quote.author, // Add a dash before the author's name
                    style: const TextStyle(
                      fontSize: 14.0,
                      fontStyle: FontStyle.italic, 
                      color: Color.fromARGB(139, 93, 64, 55),
                    ),
                  ),
                  TextButton.icon(
                    onPressed:() => delete(),
                    icon: const Icon(
                      Icons.delete, 
                      color: Colors.red
                      ),
                    label: const Text(
                      "Delete",
                         style: TextStyle(
                           fontSize: 14.0,
                           color: Colors.red,
                            ),
                          ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
    
  }
}
