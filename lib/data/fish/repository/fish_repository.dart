import 'package:critterpedia_plus/data/core/http/request_error.dart';
import 'package:critterpedia_plus/data/fish/data_source/fish_data_source.dart';
import 'package:critterpedia_plus/domain/fish/model/fish.dart';
import 'package:critterpedia_plus/domain/fish/repository/i_fish_repository.dart';
import 'package:typed_result/typed_result.dart';

class FishRepository extends IFishRepository {
  FishDataSource dataSource;

  FishRepository({
    required this.dataSource
  });

  @override
  Future<Result<List<Fish>, RequestError>> getAllFish() async {
    return (await dataSource.getFish()).map((data) =>
        data.map((e) => e.toDomain()).toList(growable: false));
  }
}