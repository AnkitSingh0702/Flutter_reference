import 'package:flutter/material.dart';
import 'data.dart';
import 'qoute_card.dart'; // Assuming 'Data' class is defined in data.dart

void func() {
  runApp(const MaterialApp(
    home: MyWidget(),
  ));
}

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  List<Data> quotes = [
    Data(
      author: 'Oscar Wilde',
      text: 'Be yourself; everyone else is already taken',
    ),
    Data(
      author: 'Oscar Wilde',
      text: 'Be yourself; everyone else is already taken',
    ),
  ];

  // Widget quoteTemplate(quote) is used to create a card widget which contains the quote and author of the quote

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Flutter App"),
        centerTitle: true,
        backgroundColor: Colors.blue[400],
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),
        // '${quote.text} - ${quote.author}' is used to display the text and author of the quote
      ),
    );
  }
}
