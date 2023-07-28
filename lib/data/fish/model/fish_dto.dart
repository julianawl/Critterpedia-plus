// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:critterpedia_plus/data/core/models/hemisphere_dto.dart';
import 'package:critterpedia_plus/domain/fish/model/fish.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable(createToJson: false)
class FishDto extends Equatable {
  final int number;
  final String name;
  final String location;
  @JsonKey(name: "shadow_size")
  final String shadowSize;
  final String rarity;
  @JsonKey(name: "sell_nook")
  final int sellNook;
  @JsonKey(name: "sell_cj")
  final int sellCj;
  @JsonKey(name: "image_url")
  final String imageUrl;
  @JsonKey(name: "render_url")
  final String renderUrl;
  final HemisphereDto north;
  final HemisphereDto south;

  const FishDto({
    required this.number,
    required this.name,
    required this.location,
    required this.shadowSize,
    required this.rarity,
    required this.sellNook,
    required this.sellCj,
    required this.imageUrl,
    required this.renderUrl,
    required this.north,
    required this.south,
  });

  factory FishDto.fromJson(Map<String, dynamic> json) =>
      FishDto(
        number: int.parse(json["number"].toString()),
        name: json["name"] as String,
        location: json["location"] as String,
        shadowSize: json["shadow_size"] as String,
        rarity: json["rarity"] as String,
        sellNook: int.parse(json["sell_nook"].toString()),
        sellCj: int.parse(json["sell_cj"].toString()),
        imageUrl: json["image_url"] as String,
        renderUrl: json["render_url"] as String,
        south: HemisphereDto.fromJson(json, hemisphere: "south"),
        north: HemisphereDto.fromJson(json, hemisphere: "north"),
      );

  Fish toDomain() {
    return Fish(
        id: number,
        name: name,
        price: sellNook.toString(),
        cjPrice: sellCj.toString(),
        shadow: shadowSize,
        iconUrl: imageUrl,
        imageUrl: renderUrl,
        location: location,
        rarity: rarity,
        north: north.toDomain(),
        south: south.toDomain());
  }

  @override
  List<Object?> get props => [name];
}
