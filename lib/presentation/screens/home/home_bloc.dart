import 'package:critterpedia_plus/data/core/http/request_error.dart';
import 'package:critterpedia_plus/domain/bugs/model/bug.dart';
import 'package:critterpedia_plus/domain/bugs/use_cases/get_all_bugs.dart';
import 'package:critterpedia_plus/domain/fish/model/fish.dart';
import 'package:critterpedia_plus/domain/fish/use_cases/get_all_fish.dart';
import 'package:critterpedia_plus/domain/sea_creatures/model/sea_creature.dart';
import 'package:critterpedia_plus/domain/sea_creatures/use_cases/get_all_sea_creatures.dart';
import 'package:critterpedia_plus/presentation/screens/home/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:typed_result/typed_result.dart';

class HomeBloc extends Cubit<HomeState> {
  final GetAllBugs _getAllBugs;
  final GetAllFish _getAllFish;
  final GetAllSeaCreatures _getAllSeaCreatures;

  HomeBloc(this._getAllBugs, this._getAllFish, this._getAllSeaCreatures) : super(HomeState());

  Future<void> init() async {
    emit(state.copyWith(isLoading: true));
    final results = await Future.wait([
      _getAllBugs(),
      _getAllFish(),
      _getAllSeaCreatures(),
    ]);

    final bugsResult = results[0] as Result<List<Bug>, RequestError>;
    final fishResult = results[1] as Result<List<Fish>, RequestError>;
    final seaCreaturesResult = results[2] as Result<List<SeaCreature>, RequestError>;

    if (bugsResult.isSuccess && fishResult.isSuccess && seaCreaturesResult.isSuccess) {
      emit(state.copyWith(
        bugs: bugsResult.get(),
        fish: fishResult.get(),
        seaCreatures: seaCreaturesResult.get(),
        isLoading: false,
        error: null
      ));
    } else {
      emit(state.copyWith(
        isLoading: false,
        error: bugsResult.getError() ?? fishResult.getError() ?? seaCreaturesResult.getError()
      ));
    }
  }
}