// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:news_app_amit/core/errors/failure.dart';
import 'package:news_app_amit/core/models/article/article.dart';

import 'package:news_app_amit/features/news_page/data/home_repo/home_repo.dart';
import '../../../../core/consts/strings.dart';

class FetchNewsController extends GetxController{
  RepoHome repoHome;

  FetchNewsController({required this.repoHome});

  RxList<Article> articlesList = <Article>[].obs;

  ///is loading varibale to check is load or not
  bool isLoading = false;

  ///is failure varibale to check is fail or not
  bool isFailure = false;

  ///to save message error
  String message = '';

  ///fetch news method
  fetchNews({required int currentIndex}) async {
    ///clear list
    articlesList.clear();
    isLoading = true;
    Either<Failure, List<Article>> result = await repoHome.fetchArticles(
      category: currentIndex == 0
          ? Strings.businessLabel
          : currentIndex == 1
              ? Strings.entertainmentLabel
              : currentIndex == 2
                  ? Strings.generalLabel
                  : currentIndex == 3
                      ? Strings.healthLabel
                      : currentIndex == 4
                          ? Strings.scienceLabel
                          : currentIndex == 5
                              ? Strings.sportsLabel
                              : Strings.technologyLabel,
    );
    result.fold(
      (failure) {
        ///failure
        isFailure = true;
        isLoading = false;
        message = failure.errorMessage;
      },
      (articles) {
        ///success
        articlesList.value = articles;
        isLoading = false;
        isFailure = false;
      },
    );
    update();
  }
}
