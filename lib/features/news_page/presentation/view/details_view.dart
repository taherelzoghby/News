// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app_amit/core/consts/style.dart';
import 'package:news_app_amit/core/models/article/article.dart';
import 'package:news_app_amit/features/news_page/presentation/view/widgets/details_body.dart';

class DetailsArticleView extends StatelessWidget {
  const DetailsArticleView({
    Key? key,
    required this.article,
  }) : super(key: key);
  final Article article;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back_ios, color: AppConsts.white),
        ),
        title: Text(
          article.author.toString(),
          style: AppConsts.style20,
        ),
        centerTitle: true,
        backgroundColor: AppConsts.mainColor,
      ),
      body: DetailsBody(article: article),
    );
  }
}
