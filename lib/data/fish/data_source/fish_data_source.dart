// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:critterpedia_plus/data/fish/model/fish_dto.dart';
import 'package:typed_result/typed_result.dart';

import 'package:critterpedia_plus/data/core/http/network_request.dart';
import 'package:critterpedia_plus/data/core/http/network_service.dart';
import 'package:critterpedia_plus/data/core/http/request_error.dart';

class FishDataSource {
  final NetworkService _networkService;
  FishDataSource(
    this._networkService,
  );

  // Future<Result<List<FishDto>, RequestError>> getFish() async {
  //   var request = NetworkRequest(
  //       type: NetworkRequestType.get,
  //       path: "fish",
  //       parser: (data) => AllFishDto.fromJson(data as Map<String, dynamic>));
  //   var response = await _networkService.execute(request: request);
  //   return response;
  // }
}
