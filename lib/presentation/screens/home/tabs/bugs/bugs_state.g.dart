// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bugs_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BugsStateCWProxy {
  BugsState bugs(List<Bug> bugs);

  BugsState error(RequestError? error);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BugsState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BugsState(...).copyWith(id: 12, name: "My name")
  /// ````
  BugsState call({
    List<Bug>? bugs,
    RequestError? error,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBugsState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBugsState.copyWith.fieldName(...)`
class _$BugsStateCWProxyImpl implements _$BugsStateCWProxy {
  const _$BugsStateCWProxyImpl(this._value);

  final BugsState _value;

  @override
  BugsState bugs(List<Bug> bugs) => this(bugs: bugs);

  @override
  BugsState error(RequestError? error) => this(error: error);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BugsState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BugsState(...).copyWith(id: 12, name: "My name")
  /// ````
  BugsState call({
    Object? bugs = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
  }) {
    return BugsState(
      bugs: bugs == const $CopyWithPlaceholder() || bugs == null
          ? _value.bugs
          // ignore: cast_nullable_to_non_nullable
          : bugs as List<Bug>,
      error: error == const $CopyWithPlaceholder()
          ? _value.error
          // ignore: cast_nullable_to_non_nullable
          : error as RequestError?,
    );
  }
}

extension $BugsStateCopyWith on BugsState {
  /// Returns a callable class that can be used as follows: `instanceOfBugsState.copyWith(...)` or like so:`instanceOfBugsState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BugsStateCWProxy get copyWith => _$BugsStateCWProxyImpl(this);
}
