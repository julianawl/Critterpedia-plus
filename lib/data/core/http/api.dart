import 'package:critterpedia_plus/data/core/http/authorization_interceptior.dart';
import 'package:critterpedia_plus/data/core/http/network_service.dart';
import 'package:dio/dio.dart';

class Api extends NetworkService {
  Api({required Dio dio})
      : super(
          dioClient: dio
            ..options.baseUrl = 'https://api.nookipedia.com/'
            ..interceptors.add(AuthorizationInterceptor()),
        );
}
