import 'package:flutter/material.dart';
import 'package:thedumbbot/services/news_api.dart';

class NewsArticleResponse extends StatelessWidget {
  
  final NewsArticle newsArticle;
  
  NewsArticleResponse({this.newsArticle});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.network(newsArticle.urlToImage),
          Text(newsArticle.description),
          RaisedButton(
            onPressed:(){},
            child: Text('Read More')
          )
        ],
      ),
    );
  }
}
