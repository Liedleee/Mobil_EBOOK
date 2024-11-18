import 'package:flutter/material.dart';

class BookDetailScreen extends StatelessWidget {
  final String title;
  final String author;
  final String image;

  const BookDetailScreen({
    Key? key,
    required this.title,
    required this.author,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(image,
                width: double.infinity, height: 300, fit: BoxFit.cover),
            const SizedBox(height: 16.0),
            Text(
              title,
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
            ),
            const SizedBox(height: 8.0),
            Text(
              author,
              style: const TextStyle(color: Colors.grey, fontSize: 18.0),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Description:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'it tells of a café in Tokyo that allows its customers to travel back in time, as long as they return before their coffee gets cold. The story originally began as a play in 2010, before being adapted into a novel in 2015.',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
