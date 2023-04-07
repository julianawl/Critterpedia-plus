import 'package:critterpedia_plus/data/core/http/api.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class NetworkModule {
  Dio getDio() {
    return Dio();
  }

  @singleton
  Api getCifraClubAPINetworkService(Dio dio) {
    return Api(dio: dio);
  }
}
