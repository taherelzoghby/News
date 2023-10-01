// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:news_app_amit/core/consts/strings.dart';
import 'package:news_app_amit/core/consts/style.dart';
import 'package:news_app_amit/core/helper/url_launch.dart';

import 'package:news_app_amit/core/models/article/article.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({
    Key? key,
    required this.article,
  }) : super(key: key);
  final Article article;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "published : ${DateFormat(Strings.dateFormat).format(
                DateTime.parse(
                  article.publishedAt.toString(),
                ),
              )}",
            ),
            Text(
              article.title.toString(),
              style: AppConsts.style18,
              textAlign: TextAlign.center,
            ),
            TextButton(
              onPressed: () => customUrlLauncher(context, link: article.url),
              child: const Text(Strings.seeMoreLabel),
            )
          ],
        ),
      ),
    );
  }
}
