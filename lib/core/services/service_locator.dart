import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:news_app_amit/core/services/api_service.dart';
import 'package:news_app_amit/features/news_page/data/home_repo/home_repo_implementaion.dart';

final getIt = GetIt.instance;

///init
void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImplementation>(
    HomeRepoImplementation(
      apiService: getIt.get<ApiService>(),
    ),
  );
}
