import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:news_app_amit/core/models/article/article.dart';
import 'package:news_app_amit/features/news_page/presentation/view/widgets/item.dart';

class SuccessWidget extends StatelessWidget {
  const SuccessWidget({
    super.key,
    required this.articles,
  });

  final List<Article> articles;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return AnimationConfiguration.staggeredList(
          position: index,
          child: SlideAnimation(
            verticalOffset: 50.0,
            child: FadeInAnimation(
              child: Item(article: articles[index]),
            ),
          ),
        );
      },
      itemCount: articles.length,
    );
  }
}
