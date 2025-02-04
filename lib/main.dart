import 'package:flutter/material.dart';
import './screens/quote_list.dart';

void main() {
  runApp(
    const  myApp()
    );
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuotesList(),
    );
  }
}


