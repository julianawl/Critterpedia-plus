import 'package:critterpedia_plus/domain/fish/use_cases/get_all_fish.dart';
import 'package:critterpedia_plus/presentation/screens/home/tabs/fish/fish_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:typed_result/typed_result.dart';

class FishBloc extends Cubit<FishState> {
  final GetAllFish _getAllFish;

  FishBloc(
      this._getAllFish,
      ) : super(FishState());

  Future<void> init() async {
    final result = await _getAllFish();

    result.when(
      success: (value) => emit(
        state.copyWith(fish: value),
      ),
      failure: (error) => emit(
        state.copyWith(error: error),
      ),
    );
  }
}