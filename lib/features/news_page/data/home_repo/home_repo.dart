import 'package:dartz/dartz.dart';
import 'package:news_app_amit/core/errors/failure.dart';
import 'package:news_app_amit/core/models/article/article.dart';

abstract class RepoHome {
  Future<Either<Failure, List<Article>>> fetchArticles({
    required String category,
  });
}
