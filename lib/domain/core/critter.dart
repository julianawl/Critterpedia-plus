import 'package:critterpedia_plus/domain/core/hemisphere.dart';
import 'package:equatable/equatable.dart';

class Critter extends Equatable {
  final int id;
  final String name;
  final String price;
  final String iconUrl;
  final String imageUrl;
  final Hemisphere north;
  final Hemisphere south;

  const Critter({required this.id, required this.name, required this.price, required this.iconUrl, required this.imageUrl, required this.north, required this.south});

  @override
  @override
  List<Object?> get props => [id, name, price, iconUrl, imageUrl];
}