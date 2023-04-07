import 'package:critterpedia_plus/domain/sea_creatures/model/sea_availability.dart';

class SeaCreature {
  int id;
  String name;
  String price;
  SeaAvailability availability;
  String speed;
  String shadow;
  String iconUrl;
  String imageUrl;

  SeaCreature(this.id, this.name, this.price, this.availability, this.speed,
      this.shadow, this.iconUrl, this.imageUrl);
}
