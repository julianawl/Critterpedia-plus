// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:critterpedia_plus/data/core/models/hemisphere_dto.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'fish_dto.g.dart';
@JsonSerializable(createToJson: false)
class FishDto extends Equatable {
  final int number;
  final String name;
  final String location;
  final String shadowSize;
  final String rarity;
  final int sellNook;
  final int sellCj;
  final String imageUrl;
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

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
