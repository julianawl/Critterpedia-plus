import 'package:critterpedia_plus/data/core/models/hemisphere_dto.dart';
import 'package:critterpedia_plus/domain/sea_creatures/model/sea_creature.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable(createToJson: false)
class SeaCreatureDto extends Equatable {
  final int number;
  final String name;
  final String rarity;
  @JsonKey(name: "sell_nook")
  final int sellNook;
  @JsonKey(name: "shadow_size")
  final String shadowSize;
  @JsonKey(name: "shadow_movement")
  final String shadowMovement;
  @JsonKey(name: "image_url")
  final String imageUrl;
  @JsonKey(name: "render_url")
  final String renderUrl;
  final HemisphereDto north;
  final HemisphereDto south;

  const SeaCreatureDto(
      {required this.number,
      required this.name,
      required this.rarity,
      required this.sellNook,
      required this.shadowSize,
      required this.shadowMovement,
      required this.imageUrl,
      required this.renderUrl,
      required this.north,
      required this.south});

  factory SeaCreatureDto.fromJson(Map<String, dynamic> json) => SeaCreatureDto(
      number: int.parse(json["number"].toString()),
      name: json["name"] as String,
      rarity: json["rarity"] as String,
      sellNook: int.parse(json["sell_nook"].toString()),
      shadowSize: json["shadow_size"] as String,
      shadowMovement: json["shadow_movement"] as String,
      imageUrl: json["image_url"] as String,
      renderUrl: json["render_url"] as String,
      north: HemisphereDto.fromJson(json, hemisphere: "north"),
      south: HemisphereDto.fromJson(json, hemisphere: "south"));

  SeaCreature toDomain() {
    return SeaCreature(
        id: number,
        name: name,
        price: sellNook.toString(),
        rarity: rarity,
        speed: shadowMovement,
        shadow: shadowSize,
        iconUrl: imageUrl,
        imageUrl: renderUrl,
        north: north.toDomain(),
        south: south.toDomain());
  }

  @override
  List<Object?> get props => [name];
}
