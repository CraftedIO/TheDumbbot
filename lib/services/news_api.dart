import 'package:http/http.dart' as http;
import 'dart:convert';

class NewsArticle {
  String author;
  String title;
  String description;
  String urlToImage;
  String source;
  String publishedAt;
  NewsArticle(
      {this.author,
      this.description,
      this.publishedAt,
      this.source,
      this.title,
      this.urlToImage});

  factory NewsArticle.fromJson(Map<String, dynamic> json) {
    return NewsArticle(
      author: json['author'],
      title: json['title'],
      description: json['description'],
      publishedAt: json['publishedAt'],
      source: json['url'],
      urlToImage: json['urlToImage'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'author': this.author,
      'description': this.description,
      'publishedAt': this.publishedAt,
      'source': this.source,
      'title': this.title,
      'urlToImage': this.urlToImage
    };
  }

  Future getBitCoinData() async {
    final baseUrl =
        'http://newsapi.org/v2/everything?q=bitcoin&from=2020-11-13&sortBy=publishedAt&apiKey=56e048e588d742a1b9a51aafc13188c7';
    try {
      final response = await http.get(baseUrl);
      if (response.statusCode == 200) {
        final jsonMap = json.decode(response.body);
        return jsonMap['articles'];
      }
    } catch (e) {
      print('Request failed');
    }
  }

  Future getTopHeadLines() async {
    final baseUrl =
        'http://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=56e048e588d742a1b9a51aafc13188c7';
    try {
      final response = await http.get(baseUrl);
      if (response.statusCode == 200) {
        final jsonMap = json.decode(response.body);
        return jsonMap['articles'];
      }
    } catch (e) {
      print('Request failed');
    }
  }

  @override
  String toString() {
    return toMap().toString();
  }
}

Future getItems(String item) async {
  final newsData = NewsArticle();
  switch (item) {
    case 'latest':
      return await newsData.getTopHeadLines();
    case 'bitcoin':
      return await newsData.getBitCoinData();
    default:
      return Future.delayed(Duration(seconds: 1))
          .then((value) => "No tag mentioed");
  }
}
