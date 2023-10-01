// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:news_app_amit/core/consts/style.dart';
import 'package:news_app_amit/core/models/article/article.dart';
import 'package:news_app_amit/features/news_page/presentation/view/details_page.dart';

class Item extends StatelessWidget {
  const Item({
    Key? key,
    required this.article,
  }) : super(key: key);
  final Article article;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => Get.to(() => DetailsArticle(article: article)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
        child: Container(
          height: size.height * .12,
          width: size.width,
          decoration: BoxDecoration(
            color: AppConsts.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              article.title!,
              style: AppConsts.style18,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ),
    );
  }
}
