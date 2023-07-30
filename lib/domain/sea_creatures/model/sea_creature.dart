import 'package:critterpedia_plus/domain/core/hemisphere.dart';

class SeaCreature {
  int id;
  String name;
  String price;
  String rarity;
  String speed;
  String shadow;
  String iconUrl;
  String imageUrl;
  Hemisphere north;
  Hemisphere south;

  SeaCreature(
      {required this.id,
      required this.name,
      required this.price,
      required this.rarity,
      required this.speed,
      required this.shadow,
      required this.iconUrl,
      required this.imageUrl,
      required this.north,
      required this.south});
}
