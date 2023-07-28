import 'package:critterpedia_plus/data/core/http/request_error.dart';
import 'package:critterpedia_plus/domain/fish/model/fish.dart';
import 'package:critterpedia_plus/domain/fish/repository/i_fish_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:typed_result/typed_result.dart';

@injectable
class GetAllFish {
  final IFishRepository repository;

  GetAllFish({required this.repository});

  Future<Result<List<Fish>, RequestError>> call() async {
    return await repository.getAllFish();
  }
}