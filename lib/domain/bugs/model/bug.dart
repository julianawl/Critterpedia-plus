import 'package:critterpedia_plus/domain/core/critter.dart';

class Bug extends Critter {
  final String flickPrice;
  final String location;
  final String rarity;

  const Bug({
    required super.id,
    required super.name,
    required super.price,
    required this.flickPrice,
    required super.iconUrl,
    required super.imageUrl,
    required this.location,
    required this.rarity,
    required super.north,
    required super.south,
  });
}
