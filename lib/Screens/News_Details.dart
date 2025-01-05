import 'package:flutter/material.dart';

class NewsDetailPage extends StatelessWidget {
  final String title;
  final String description;
  final String content;
  final String publishedAt;
  final String author;

  const NewsDetailPage({
    super.key,
    required this.title, required this.description, required this.content,
    required this.publishedAt,
    required this.author,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title),
            Text(description),
            Text(content),
            Text("Published At: $publishedAt"),
            Text("Author: $author"),
          ],
        ),
      ),
    );
  }
}
