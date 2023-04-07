// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:critterpedia_plus/data/core/models/hemisphere_dto.dart';
import 'package:critterpedia_plus/domain/bugs/model/bug.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'bug_dto.g.dart';

@JsonSerializable(createToJson: false)
class BugDto extends Equatable {
  final int number;
  final String name;
  final String location;
  final String rarity;
  final int sellNook;
  final int sellFlick;
  final String imageUrl;
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

  factory BugDto.fromJson(Map<String, dynamic> json) => _$BugDtoFromJson(json);

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
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
