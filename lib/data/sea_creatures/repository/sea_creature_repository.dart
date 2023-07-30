import 'package:critterpedia_plus/data/core/http/request_error.dart';
import 'package:critterpedia_plus/data/sea_creatures/data_source/sea_creature_data_source.dart';
import 'package:critterpedia_plus/domain/sea_creatures/model/sea_creature.dart';
import 'package:critterpedia_plus/domain/sea_creatures/repository/i_sea_creature_repository.dart';
import 'package:typed_result/typed_result.dart';

class SeaCreatureRepository extends ISeaCreatureRepository {
  SeaCreatureDataSource dataSource;

  SeaCreatureRepository({required this.dataSource});

  @override
  Future<Result<List<SeaCreature>, RequestError>> getAllSeaCreatures() async {
    return (await dataSource.getSeaCreatures())
        .map((data) => data.map((e) => e.toDomain()).toList(growable: false));
  }
}