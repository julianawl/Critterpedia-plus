import '../../bugs/model/availability.dart';

class Fish {
  int id;
  String name;
  String price;
  String cjPrice;
  Availability availability;
  String shadow;
  String iconUrl;
  String imageUrl;

  Fish(this.id, this.name, this.price, this.cjPrice, this.availability,
      this.shadow, this.iconUrl, this.imageUrl);
}
