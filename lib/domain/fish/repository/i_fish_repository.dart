import 'package:critterpedia_plus/data/core/http/request_error.dart';
import 'package:critterpedia_plus/domain/fish/model/fish.dart';
import 'package:typed_result/typed_result.dart';

abstract class IFishRepository {
  Future<Result<List<Fish>, RequestError>> getAllFish();
}