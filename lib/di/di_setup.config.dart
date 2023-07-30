// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:critterpedia_plus/data/bugs/data_source/bug_data_source.dart'
    as _i5;
import 'package:critterpedia_plus/data/core/http/api.dart' as _i4;
import 'package:critterpedia_plus/data/fish/data_source/fish_data_source.dart'
    as _i6;
import 'package:critterpedia_plus/data/sea_creatures/data_source/sea_creature_data_source.dart'
    as _i9;
import 'package:critterpedia_plus/di/bug_module.dart' as _i14;
import 'package:critterpedia_plus/di/fish_module.dart' as _i16;
import 'package:critterpedia_plus/di/network_module.dart' as _i15;
import 'package:critterpedia_plus/di/sea_creature_module.dart' as _i17;
import 'package:critterpedia_plus/domain/bugs/repository/i_bug_repository.dart'
    as _i7;
import 'package:critterpedia_plus/domain/bugs/use_cases/get_all_bugs.dart'
    as _i10;
import 'package:critterpedia_plus/domain/fish/repository/i_fish_repository.dart'
    as _i8;
import 'package:critterpedia_plus/domain/fish/use_cases/get_all_fish.dart'
    as _i11;
import 'package:critterpedia_plus/domain/sea_creatures/repository/i_sea_creature_repository.dart'
    as _i12;
import 'package:critterpedia_plus/domain/sea_creatures/use_cases/get_all_sea_creatures.dart'
    as _i13;
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final networkModule = _$NetworkModule();
  final bugModule = _$BugModule();
  final fishModule = _$FishModule();
  final seaCreatureModule = _$SeaCreatureModule();
  gh.factory<_i3.Dio>(() => networkModule.getDio());
  gh.singleton<_i4.Api>(
      networkModule.getCifraClubAPINetworkService(gh<_i3.Dio>()));
  gh.factory<_i5.BugDataSource>(
      () => bugModule.getBugsDataSource(gh<_i4.Api>()));
  gh.factory<_i6.FishDataSource>(
      () => fishModule.getFishDataSource(gh<_i4.Api>()));
  gh.factory<_i7.IBugRepository>(
      () => bugModule.getBugRepository(gh<_i5.BugDataSource>()));
  gh.factory<_i8.IFishRepository>(
      () => fishModule.getFishRepository(gh<_i6.FishDataSource>()));
  gh.factory<_i9.SeaCreatureDataSource>(
      () => seaCreatureModule.getSeaCreatureDataSource(gh<_i4.Api>()));
  gh.factory<_i10.GetAllBugs>(
      () => _i10.GetAllBugs(repository: gh<_i7.IBugRepository>()));
  gh.factory<_i11.GetAllFish>(
      () => _i11.GetAllFish(repository: gh<_i8.IFishRepository>()));
  gh.factory<_i12.ISeaCreatureRepository>(() => seaCreatureModule
      .getSeaCreatureRepository(gh<_i9.SeaCreatureDataSource>()));
  gh.factory<_i13.GetAllSeaCreatures>(() =>
      _i13.GetAllSeaCreatures(repository: gh<_i12.ISeaCreatureRepository>()));
  return getIt;
}

class _$BugModule extends _i14.BugModule {}

class _$NetworkModule extends _i15.NetworkModule {}

class _$FishModule extends _i16.FishModule {}

class _$SeaCreatureModule extends _i17.SeaCreatureModule {}
