import 'package:flutter/cupertino.dart';

class NewsWidget extends StatelessWidget {
  String title;
  String author;
  String description;
  String urlToImage;
  NewsWidget({required this.description,
  required this.title ,
  required this.author,
  required this.urlToImage});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(urlToImage),
        Text(author , style: TextStyle(fontWeight: FontWeight.bold),),
        Text(description , style: TextStyle(fontWeight: FontWeight.bold),),
        Text(title , style: TextStyle(fontWeight: FontWeight.bold),),
      ],
    );
  }
}
