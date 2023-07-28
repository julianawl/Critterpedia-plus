// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:critterpedia_plus/data/core/models/hemisphere_dto.dart';
import 'package:critterpedia_plus/domain/bugs/model/bug.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable(createToJson: false)
class BugDto extends Equatable {
  final int number;
  final String name;
  final String location;
  final String rarity;
  @JsonKey(name: "sell_nook")
  final int sellNook;
  @JsonKey(name: "sell_flick")
  final int sellFlick;
  @JsonKey(name: "image_url")
  final String imageUrl;
  @JsonKey(name: "render_url")
  final String renderUrl;
  final HemisphereDto north;
  final HemisphereDto south;

  const BugDto({
    required this.number,
    required this.name,
    required this.location,
    required this.rarity,
    required this.sellNook,
    required this.sellFlick,
    required this.imageUrl,
    required this.renderUrl,
    required this.north,
    required this.south,
  });

  factory BugDto.fromJson(Map<String, dynamic> json) =>
      BugDto(number: int.parse(json["number"].toString()),
          name: json["name"] as String,
          location: json["location"] as String,
          rarity: json["rarity"] as String,
          sellNook: int.parse(json["sell_nook"].toString()),
          sellFlick: int.parse(json["sell_flick"].toString()),
          imageUrl: json["image_url"] as String,
          renderUrl: json["render_url"] as String,
        south: HemisphereDto.fromJson(json, hemisphere: "south"),
        north: HemisphereDto.fromJson(json, hemisphere: "north"),
      );

  Bug toDomain() {
    return Bug(
        id: number,
        name: name,
        price: sellNook.toString(),
        flickPrice: sellFlick.toString(),
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
