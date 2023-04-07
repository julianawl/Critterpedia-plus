import 'package:equatable/equatable.dart';

class Availability extends Equatable {
  final List<int> monthsNorthern;
  final List<int> monthsSouthern;
  final String time;
  final bool isAllDay;
  final bool isAllYear;
  final String location;
  final String rarity;

  const Availability({
    required this.monthsNorthern,
    required this.monthsSouthern,
    required this.time,
    required this.isAllDay,
    required this.isAllYear,
    required this.location,
    required this.rarity,
  });

  @override
  List<Object?> get props => [
        monthsNorthern,
        monthsSouthern,
        time,
        isAllDay,
        isAllYear,
        location,
        rarity
      ];
}
