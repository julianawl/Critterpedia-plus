import 'package:critterpedia_plus/domain/core/hemisphere.dart';
import 'package:equatable/equatable.dart';

class HemisphereDto extends Equatable {
  final List<int> monthsArray;
  final List<String> timesByMonth;

  const HemisphereDto({
    required this.monthsArray,
    required this.timesByMonth,
  });

  factory HemisphereDto.fromJson(Map<String, dynamic> json, {required String hemisphere}) => HemisphereDto(
      monthsArray:
          (json[hemisphere]['months_array'] as List<dynamic>).map((e) => e as int).toList(),
      timesByMonth: (json[hemisphere]['times_by_month'] as Map<String, dynamic>).values.map((e) => e as String).toList());

  Hemisphere toDomain() {
    return Hemisphere(monthsArray: monthsArray, timesByMonth: timesByMonth);
  }

  @override
  List<Object> get props => [];
}
