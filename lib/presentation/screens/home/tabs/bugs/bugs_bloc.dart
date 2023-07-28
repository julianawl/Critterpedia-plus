import 'package:critterpedia_plus/presentation/screens/home/tabs/bugs/bugs_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:typed_result/typed_result.dart';

import '../../../../../domain/bugs/use_cases/get_all_bugs.dart';

class BugsBloc extends Cubit<BugsState> {
  final GetAllBugs _getAllBugs;

  BugsBloc(
    this._getAllBugs,
  ) : super(BugsState());

  Future<void> init() async {
    final result = await _getAllBugs();

    result.when(
      success: (value) => emit(
        state.copyWith(bugs: value),
      ),
      failure: (error) => emit(
        state.copyWith(error: error),
      ),
    );
  }
}
