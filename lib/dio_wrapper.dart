import 'package:dio/dio.dart';

class DioWrapper {
  static Dio _dio;
  static String token;

  static Dio get dio {
    if (_dio == null) {
      _dio = Dio();
      _dio.interceptors.add(InterceptorsWrapper(
        onRequest: (RequestOptions options) async {
          options.headers.addAll({
            "Authorization": "Bearer $token"
          });
        }
      ));
    }
    return _dio;
  }
}