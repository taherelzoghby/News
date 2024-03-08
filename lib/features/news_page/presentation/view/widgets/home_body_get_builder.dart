
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app_amit/core/services/service_locator.dart';
import 'package:news_app_amit/core/widgets/failWidget.dart';
import 'package:news_app_amit/features/news_page/data/home_repo/home_repo_implementaion.dart';
import 'package:news_app_amit/features/news_page/presentation/view/widgets/success_widget.dart';
import 'package:news_app_amit/features/news_page/presentation/view_model/fetch_news_controller.dart';

import '../../../../../core/models/article/article.dart';
import '../../../../../core/widgets/custom_loading.dart';

class HomeBodyGetBuilder extends StatelessWidget {
  const HomeBodyGetBuilder({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    Get.find<FetchNewsController>().fetchNews(currentIndex: index);
    return GetBuilder<FetchNewsController>(
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
          List<Article> articles = cont.articlesList.value;
          return SuccessWidget(articles: articles);
        }
      },
    );
  }
}
