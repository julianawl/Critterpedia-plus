import 'package:critterpedia_plus/data/core/http/api.dart';
import 'package:critterpedia_plus/data/sea_creatures/data_source/sea_creature_data_source.dart';
import 'package:critterpedia_plus/data/sea_creatures/repository/sea_creature_repository.dart';
import 'package:critterpedia_plus/domain/sea_creatures/repository/i_sea_creature_repository.dart';
import 'package:injectable/injectable.dart';

@module
abstract class SeaCreatureModule {
  SeaCreatureDataSource getSeaCreatureDataSource(Api networkService) {
    return SeaCreatureDataSource(networkService);
  }

  ISeaCreatureRepository getSeaCreatureRepository(SeaCreatureDataSource seaCreatureDataSource) {
    return SeaCreatureRepository(dataSource: seaCreatureDataSource);
  }
}