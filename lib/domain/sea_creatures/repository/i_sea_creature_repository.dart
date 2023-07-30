import 'package:critterpedia_plus/data/core/http/request_error.dart';
import 'package:critterpedia_plus/domain/sea_creatures/model/sea_creature.dart';
import 'package:typed_result/typed_result.dart';

abstract class ISeaCreatureRepository {
  Future<Result<List<SeaCreature>, RequestError>> getAllSeaCreatures();
}