// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:news_app_amit/core/consts/style.dart';
import 'package:news_app_amit/core/models/article/article.dart';
import 'package:news_app_amit/features/news_page/presentation/view/details_view.dart';

class Item extends StatelessWidget {
  const Item({
    Key? key,
    required this.article,
  }) : super(key: key);
  final Article article;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(
        () => DetailsArticleView(article: article),
      ),
      child: Padding(
        padding: AppConsts.allPadding8,
        child: AspectRatio(
          aspectRatio: AppConsts.aspect16on5,
          child: Container(
            decoration: AppConsts.boxDecorationItem,
            child: Padding(
              padding: AppConsts.allPadding8,
              child: Text(
                article.title!,
                style: AppConsts.style18,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
