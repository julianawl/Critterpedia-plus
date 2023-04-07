// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hemisphere_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HemisphereDto _$HemisphereDtoFromJson(Map<String, dynamic> json) =>
    HemisphereDto(
      (json['monthsArray'] as List<dynamic>).map((e) => e as int).toList(),
      (json['timesByMonth'] as List<dynamic>).map((e) => e as String).toList(),
    );
