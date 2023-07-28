import 'package:critterpedia_plus/data/core/http/api.dart';
import 'package:critterpedia_plus/data/fish/data_source/fish_data_source.dart';
import 'package:critterpedia_plus/data/fish/repository/fish_repository.dart';
import 'package:critterpedia_plus/domain/fish/repository/i_fish_repository.dart';
import 'package:injectable/injectable.dart';

@module
abstract class FishModule {
  FishDataSource getFishDataSource(Api networkService) {
    return FishDataSource(networkService);
  }

  IFishRepository getFishRepository(FishDataSource fishDataSource) {
    return FishRepository(dataSource: fishDataSource);
  }
}