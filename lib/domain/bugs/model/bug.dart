// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:critterpedia_plus/domain/core/hemisphere.dart';
import 'package:equatable/equatable.dart';

class Bug extends Equatable {
  final int id;
  final String name;
  final String price;
  final String flickPrice;
  final String iconUrl;
  final String imageUrl;
  final String location;
  final String rarity;
  final Hemisphere north;
  final Hemisphere south;

  const Bug({
    required this.id,
    required this.name,
    required this.price,
    required this.flickPrice,
    required this.iconUrl,
    required this.imageUrl,
    required this.location,
    required this.rarity,
    required this.north,
    required this.south,
  });

  @override
  List<Object?> get props => [id, name, price, flickPrice, iconUrl, imageUrl];
}
