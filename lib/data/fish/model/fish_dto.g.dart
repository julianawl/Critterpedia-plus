// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fish_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FishDto _$FishDtoFromJson(Map<String, dynamic> json) => FishDto(
      number: json['number'] as int,
      name: json['name'] as String,
      location: json['location'] as String,
      shadowSize: json['shadowSize'] as String,
      rarity: json['rarity'] as String,
      sellNook: json['sellNook'] as int,
      sellCj: json['sellCj'] as int,
      imageUrl: json['imageUrl'] as String,
      renderUrl: json['renderUrl'] as String,
      north: HemisphereDto.fromJson(json['north'] as Map<String, dynamic>),
      south: HemisphereDto.fromJson(json['south'] as Map<String, dynamic>),
    );
