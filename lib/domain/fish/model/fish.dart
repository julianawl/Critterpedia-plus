import 'package:critterpedia_plus/domain/core/hemisphere.dart';

class Fish {
  int id;
  String name;
  String price;
  String cjPrice;
  String location;
  String rarity;
  String shadow;
  String iconUrl;
  String imageUrl;
  final Hemisphere north;
  final Hemisphere south;

  Fish(
      { required this.id,
      required this.name,
      required this.price,
      required this.cjPrice,
      required this.location,
        required this.rarity,
      required this.shadow,
      required this.iconUrl,
      required this.imageUrl,
      required this.south,
      required this.north});
}
