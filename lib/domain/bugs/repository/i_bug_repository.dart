import 'package:critterpedia_plus/data/core/http/request_error.dart';
import 'package:critterpedia_plus/domain/bugs/model/bug.dart';
import 'package:typed_result/typed_result.dart';

abstract class IBugRepository {
  Future<Result<List<Bug>, RequestError>> getAllBugs();
}
