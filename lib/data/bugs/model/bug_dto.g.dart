// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bug_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BugDto _$BugDtoFromJson(Map<String, dynamic> json) => BugDto(
      number: json['number'] as int,
      name: json['name'] as String,
      location: json['location'] as String,
      rarity: json['rarity'] as String,
      sellNook: json['sellNook'] as int,
      sellFlick: json['sellFlick'] as int,
      imageUrl: json['imageUrl'] as String,
      renderUrl: json['renderUrl'] as String,
      north: HemisphereDto.fromJson(json['north'] as Map<String, dynamic>),
      south: HemisphereDto.fromJson(json['south'] as Map<String, dynamic>),
    );
