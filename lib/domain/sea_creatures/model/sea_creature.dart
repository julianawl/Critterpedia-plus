import 'package:critterpedia_plus/domain/core/critter.dart';

class SeaCreature extends Critter {
  final String rarity;
  final String speed;
  final String shadow;

  const SeaCreature(
      {required super.id,
      required super.name,
      required super.price,
      required this.rarity,
      required this.speed,
      required this.shadow,
      required super.iconUrl,
      required super.imageUrl,
      required super.north,
      required super.south});
}
