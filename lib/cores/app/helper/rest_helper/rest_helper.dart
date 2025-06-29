import 'package:life_helper/app_import.dart';


class RestHelper{
  static const String BASE_URL = 'https://jsonplaceholder.typicode.com/';
  final Dio _dio;
  RestHelper():_dio=Dio(BaseOptions(baseUrl: BASE_URL,receiveTimeout: const Duration(seconds: 45),connectTimeout: const Duration(seconds: 15), headers: {
    'Content-Type': 'application/json',
  },)){
    _dio.interceptors.add(InterceptorsWrapper(
      onError: (DioException exception, ErrorInterceptorHandler handler) async {
        var statusCode = exception.response?.statusCode;


        switch (statusCode) {
          case 400:
          case 401:
          // Handle unauthorized error, possibly refresh token
         //   await refreshToken();
            // Retry the request with the new token
            var options = exception.requestOptions;
            var newRequest = await _dio.request(
              options.path,
              options: Options(
                method: options.method,
                headers: options.headers,
              ),
              data: options.data,
              queryParameters: options.queryParameters,
            );
            return handler.resolve(newRequest);
          case 403:
          case 404:
          // Show error message to the user
           // showErrorToast(error.response?.data['error'] ?? 'Error occurred');
            break;
          case 422:
          // Handle validation errors
            break;
          case 500:
          case 503:
          // Handle server errors
           // showErrorToast('Server error');
            break;
          default:
          // Handle other status codes
            break;
        }


        return handler.next(exception);
      },
      onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
        options.headers['Authorization'] = 'Bearer ';
        return handler.next(options);
      },
    ));
  }


  Future<Response> get(String url) async {
    return await _dio.get(url);
  }
  Future<Response> post(String url, Map<String, dynamic> data) async {
    return await _dio.post(url, data: data);
  }
}
