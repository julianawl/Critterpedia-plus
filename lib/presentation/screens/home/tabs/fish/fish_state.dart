import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:critterpedia_plus/data/core/http/request_error.dart';
import 'package:critterpedia_plus/domain/fish/model/fish.dart';

part 'fish_state.g.dart';

@CopyWith()
class FishState {
  final List<Fish> fish;
  final RequestError? error;

  FishState({
    this.fish = const [],
    this.error,
});
}