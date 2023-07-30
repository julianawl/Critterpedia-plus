// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$HomeStateCWProxy {
  HomeState bugs(List<Bug> bugs);

  HomeState fish(List<Fish> fish);

  HomeState seaCreatures(List<SeaCreature> seaCreatures);

  HomeState error(RequestError? error);

  HomeState isLoading(bool isLoading);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `HomeState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// HomeState(...).copyWith(id: 12, name: "My name")
  /// ````
  HomeState call({
    List<Bug>? bugs,
    List<Fish>? fish,
    List<SeaCreature>? seaCreatures,
    RequestError? error,
    bool? isLoading,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfHomeState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfHomeState.copyWith.fieldName(...)`
class _$HomeStateCWProxyImpl implements _$HomeStateCWProxy {
  const _$HomeStateCWProxyImpl(this._value);

  final HomeState _value;

  @override
  HomeState bugs(List<Bug> bugs) => this(bugs: bugs);

  @override
  HomeState fish(List<Fish> fish) => this(fish: fish);

  @override
  HomeState seaCreatures(List<SeaCreature> seaCreatures) =>
      this(seaCreatures: seaCreatures);

  @override
  HomeState error(RequestError? error) => this(error: error);

  @override
  HomeState isLoading(bool isLoading) => this(isLoading: isLoading);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `HomeState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// HomeState(...).copyWith(id: 12, name: "My name")
  /// ````
  HomeState call({
    Object? bugs = const $CopyWithPlaceholder(),
    Object? fish = const $CopyWithPlaceholder(),
    Object? seaCreatures = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? isLoading = const $CopyWithPlaceholder(),
  }) {
    return HomeState(
      bugs: bugs == const $CopyWithPlaceholder() || bugs == null
          ? _value.bugs
          // ignore: cast_nullable_to_non_nullable
          : bugs as List<Bug>,
      fish: fish == const $CopyWithPlaceholder() || fish == null
          ? _value.fish
          // ignore: cast_nullable_to_non_nullable
          : fish as List<Fish>,
      seaCreatures:
          seaCreatures == const $CopyWithPlaceholder() || seaCreatures == null
              ? _value.seaCreatures
              // ignore: cast_nullable_to_non_nullable
              : seaCreatures as List<SeaCreature>,
      error: error == const $CopyWithPlaceholder()
          ? _value.error
          // ignore: cast_nullable_to_non_nullable
          : error as RequestError?,
      isLoading: isLoading == const $CopyWithPlaceholder() || isLoading == null
          ? _value.isLoading
          // ignore: cast_nullable_to_non_nullable
          : isLoading as bool,
    );
  }
}

extension $HomeStateCopyWith on HomeState {
  /// Returns a callable class that can be used as follows: `instanceOfHomeState.copyWith(...)` or like so:`instanceOfHomeState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$HomeStateCWProxy get copyWith => _$HomeStateCWProxyImpl(this);
}
