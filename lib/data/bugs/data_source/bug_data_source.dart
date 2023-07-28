// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:critterpedia_plus/data/bugs/model/bug_dto.dart';
import 'package:critterpedia_plus/data/core/http/network_request.dart';
import 'package:critterpedia_plus/data/core/http/network_service.dart';
import 'package:critterpedia_plus/data/core/http/request_error.dart';
import 'package:typed_result/typed_result.dart';

class BugDataSource {
  final NetworkService _networkService;

  BugDataSource(this._networkService);

  Future<Result<List<BugDto>, RequestError>> getBugs() async {
    var request = NetworkRequest(
        type: NetworkRequestType.get,
        path: "nh/bugs",
        parser: (data) {
          var list = data as List<dynamic>;
          return list.map((e) => BugDto.fromJson(e)).toList(growable: false);
        });
    var response = await _networkService.execute(request: request);
    return response;
  }
}
