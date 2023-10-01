import 'package:equatable/equatable.dart';

class Article extends Equatable {
  final String? author;
  final String? title;
  final dynamic description;
  final String? url;
  final dynamic urlToImage;
  final String? publishedAt;
  final dynamic content;

  const Article({
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });

  factory Article.fromJson(Map<String, dynamic> data) {
    return Article(
      author: data['author'],
      title: data['title'],
      description: data['description'] as dynamic,
      url: data['url'],
      urlToImage: data['urlToImage'] as dynamic,
      publishedAt: data['publishedAt'],
      content: data['content'] as dynamic,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'author': author,
      'title': title,
      'description': description,
      'url': url,
      'urlToImage': urlToImage,
      'publishedAt': publishedAt,
      'content': content,
    };
  }

  @override
  List<Object?> get props {
    return [
      author,
      title,
      description,
      url,
      urlToImage,
      publishedAt,
      content,
    ];
  }
}
