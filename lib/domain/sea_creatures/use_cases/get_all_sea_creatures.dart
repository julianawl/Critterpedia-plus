import 'package:critterpedia_plus/data/core/http/request_error.dart';
import 'package:critterpedia_plus/domain/sea_creatures/model/sea_creature.dart';
import 'package:critterpedia_plus/domain/sea_creatures/repository/i_sea_creature_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:typed_result/typed_result.dart';

@injectable
class GetAllSeaCreatures {
  final ISeaCreatureRepository repository;

  GetAllSeaCreatures({required this.repository});

  Future<Result<List<SeaCreature>, RequestError>> call() async {
    return await repository.getAllSeaCreatures();
  }
}