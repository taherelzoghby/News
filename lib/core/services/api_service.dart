import 'package:dio/dio.dart';
import 'package:news_app_amit/core/consts/api.dart';

class ApiService {
  ///variables
  final String baseUrl = ApiConsts.baseUrl;
  final Dio _dio;

  ///constructor
  ApiService(this._dio);

  ///fetch data
  Future<Map<String, dynamic>> get({required String category}) async {
    Response response = await _dio.get(
      '$baseUrl${ApiConsts.endPoints}apiKey=${ApiConsts.apiKey}&category=$category&country=eg',
    );
    if (response.statusCode == 200) {
      return response.data;
    } else {
      return {};
    }
  }
}
