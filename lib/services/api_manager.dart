import 'package:dio/dio.dart';
import 'package:islami_app/services/api_constants.dart';

class ApiManager {
  static final Dio _dio = Dio(
    BaseOptions(
      baseUrl: ApiConstants.baseUrl,
    ),
  );

  static getRadios() async {
    var response = await _dio.get(EndPoints.radios);
  }
}
