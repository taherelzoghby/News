// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:news_app_amit/core/consts/strings.dart';

import 'package:news_app_amit/core/errors/failure.dart';
import 'package:news_app_amit/core/models/article/article.dart';
import 'package:news_app_amit/core/services/api_service.dart';
import 'package:news_app_amit/features/news_page/data/home_repo/home_repo.dart';

class HomeRepoImplementation implements RepoHome {
  ApiService apiService;
  HomeRepoImplementation({required this.apiService});
  @override
  Future<Either<Failure, List<Article>>> fetchArticles({
    required String category,
  }) async {
    List<Article> articlesList = [];
    try {
      var result = await apiService.get(category: category);

      for (var element in result[Strings.articlesLabel]) {
        articlesList.add(Article.fromJson(element));
      }
      return Right(articlesList);
    } catch (error) {
      if (error is DioException) {
        return Left(ServerFailure.fromDioError(error));
      }
      return Left(ServerFailure(errorMessage: error.toString()));
    }
  }
}
