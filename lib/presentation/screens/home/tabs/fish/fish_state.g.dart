// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fish_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$FishStateCWProxy {
  FishState fish(List<Fish> fish);

  FishState error(RequestError? error);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FishState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FishState(...).copyWith(id: 12, name: "My name")
  /// ````
  FishState call({
    List<Fish>? fish,
    RequestError? error,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfFishState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfFishState.copyWith.fieldName(...)`
class _$FishStateCWProxyImpl implements _$FishStateCWProxy {
  const _$FishStateCWProxyImpl(this._value);

  final FishState _value;

  @override
  FishState fish(List<Fish> fish) => this(fish: fish);

  @override
  FishState error(RequestError? error) => this(error: error);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FishState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FishState(...).copyWith(id: 12, name: "My name")
  /// ````
  FishState call({
    Object? fish = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
  }) {
    return FishState(
      fish: fish == const $CopyWithPlaceholder() || fish == null
          ? _value.fish
          // ignore: cast_nullable_to_non_nullable
          : fish as List<Fish>,
      error: error == const $CopyWithPlaceholder()
          ? _value.error
          // ignore: cast_nullable_to_non_nullable
          : error as RequestError?,
    );
  }
}

extension $FishStateCopyWith on FishState {
  /// Returns a callable class that can be used as follows: `instanceOfFishState.copyWith(...)` or like so:`instanceOfFishState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$FishStateCWProxy get copyWith => _$FishStateCWProxyImpl(this);
}
