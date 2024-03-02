import 'package:flutter/material.dart';
import 'data.dart';

class QuoteCard extends StatelessWidget {
  final Data quote;
  final Function delete;
  const QuoteCard({super.key, required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(
              quote.text,
              style: const TextStyle(
                fontSize: 18.0,
                color: Color.fromARGB(255, 124, 120, 120),
              ),
            ),
            const SizedBox(height: 6.0),
            Text(
              quote.author,
              style: const TextStyle(
                fontSize: 14.0,
                color: Color.fromARGB(255, 97, 96, 96),
              ),
            ),
            const SizedBox(height: 8.0),
            FloatingActionButton(
              onPressed: () => delete(),
              child: const Icon(Icons.delete),
            )
          ],
        ),
      ),
    );
  }
}
