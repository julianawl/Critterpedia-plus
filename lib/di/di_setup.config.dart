// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:critterpedia_plus/data/bugs/data_source/bug_data_source.dart'
    as _i5;
import 'package:critterpedia_plus/data/core/http/api.dart' as _i4;
import 'package:critterpedia_plus/di/bug_module.dart' as _i8;
import 'package:critterpedia_plus/di/network_module.dart' as _i9;
import 'package:critterpedia_plus/domain/bugs/repository/i_bug_repository.dart'
    as _i6;
import 'package:critterpedia_plus/domain/bugs/usecase/get_all_bugs.dart' as _i7;
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
  gh.factory<_i3.Dio>(() => networkModule.getDio());
  gh.singleton<_i4.Api>(
      networkModule.getCifraClubAPINetworkService(gh<_i3.Dio>()));
  gh.factory<_i5.BugDataSource>(
      () => bugModule.getBugsDataSource(gh<_i4.Api>()));
  gh.factory<_i6.IBugRepository>(
      () => bugModule.getSongRepository(gh<_i5.BugDataSource>()));
  gh.factory<_i7.GetAllBugs>(
      () => _i7.GetAllBugs(repository: gh<_i6.IBugRepository>()));
  return getIt;
}

class _$BugModule extends _i8.BugModule {}

class _$NetworkModule extends _i9.NetworkModule {}
