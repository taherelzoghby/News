// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app_amit/core/consts/style.dart';
import 'package:news_app_amit/core/models/article/article.dart';
import 'package:news_app_amit/core/services/service_locator.dart';
import 'package:news_app_amit/core/widgets/custom_loading.dart';
import 'package:news_app_amit/core/widgets/failWidget.dart';
import 'package:news_app_amit/features/news_page/presentation/view/widgets/success_widget.dart';
import 'package:news_app_amit/features/news_page/presentation/view_model/fetch_news_controller.dart';

import '../../../data/home_repo/home_repo_implementaion.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    Get.find<FetchNewsController>().fetchNews(currentIndex: index);
    return Container(
      decoration: AppConsts.boxDecorationHomePage,
      child: GetBuilder<FetchNewsController>(
        init: FetchNewsController(
          repoHome: getIt.get<HomeRepoImplementation>(),
        ),
        builder: (cont) {
          if (cont.isLoading) {
            ///loading
            return const CustomLoading();
          } else if (cont.isFailure) {
            ///failure
            return FailWidget(errorMessage: cont.message);
          } else {
            ///loaded
            // ignore: invalid_use_of_protected_member
            List<Article> articles = cont.articleslist.value;
            return SuccessWidget(articles: articles);
          }
        },
      ),
    );
  }
}
