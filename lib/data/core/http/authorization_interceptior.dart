import 'package:dio/dio.dart';

class AuthorizationInterceptor extends Interceptor {
  static const String _secret = "720fef56-8452-4598-88a5-4dc8ff7f2491";
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['X-API-KEY'] = _secret;
    options.headers['Accept-Version'] = '1.6.0';
    return super.onRequest(options, handler);
  }
}
