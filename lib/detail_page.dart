import 'package:flutter/material.dart';
import 'package:news_app/article.dart';

class DetailPage extends StatelessWidget {
  final Article article;
  const DetailPage({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail"),
      ),
      body: ListView(
        children: [
          Image.network(article.urlToImage),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(article.content!),
          )
        ],
      ),
    );
  }
}