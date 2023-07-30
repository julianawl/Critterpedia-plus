import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:critterpedia_plus/data/core/http/request_error.dart';
import 'package:critterpedia_plus/domain/bugs/model/bug.dart';
import 'package:critterpedia_plus/domain/fish/model/fish.dart';
import 'package:critterpedia_plus/domain/sea_creatures/model/sea_creature.dart';

part 'home_state.g.dart';

@CopyWith()
class HomeState {
  final List<Bug> bugs;
  final List<Fish> fish;
  final List<SeaCreature> seaCreatures;
  final RequestError? error;
  final bool isLoading;

  HomeState({
    this.bugs = const [],
    this.fish = const [],
    this.seaCreatures = const [],
    this.error,
    this.isLoading = false
});
}