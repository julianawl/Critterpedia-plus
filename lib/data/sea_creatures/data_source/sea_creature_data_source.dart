import 'package:critterpedia_plus/data/core/http/network_request.dart';
import 'package:critterpedia_plus/data/core/http/network_service.dart';
import 'package:critterpedia_plus/data/sea_creatures/models/sea_creature_dto.dart';
import 'package:critterpedia_plus/data/core/http/request_error.dart';
import 'package:typed_result/typed_result.dart';

class SeaCreatureDataSource {
  final NetworkService _networkService;

  SeaCreatureDataSource(this._networkService);

  Future<Result<List<SeaCreatureDto>, RequestError>> getSeaCreatures() async {
    var request = NetworkRequest(type: NetworkRequestType.get, path: "nh/sea", parser: (data) {
      var list = data as List<dynamic>;
      return list.map((e) => SeaCreatureDto.fromJson(e)).toList(growable: false);
    });
    var response = await _networkService.execute(request: request);
    return response;
  }
}