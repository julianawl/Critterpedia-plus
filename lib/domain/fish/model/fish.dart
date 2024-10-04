import 'package:critterpedia_plus/domain/core/critter.dart';

class Fish extends Critter {
  final String cjPrice;
  final String location;
  final String rarity;
  final String shadow;

  const Fish({
    required super.id,
    required super.name,
    required super.price,
    required super.iconUrl,
    required super.imageUrl,
    required super.north,
    required super.south,
      required this.cjPrice,
      required this.location,
      required this.rarity,
      required this.shadow,});
}
