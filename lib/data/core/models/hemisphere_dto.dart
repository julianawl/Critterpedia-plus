import 'package:critterpedia_plus/domain/core/hemisphere.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'hemisphere_dto.g.dart';

@JsonSerializable(createToJson: false)
class HemisphereDto extends Equatable {
  final List<int> monthsArray;
  final List<String> timesByMonth;

  const HemisphereDto(this.monthsArray, this.timesByMonth);

  factory HemisphereDto.fromJson(Map<String, dynamic> json) => _$HemisphereDtoFromJson(json);

  Hemisphere toDomain() {
    return Hemisphere(monthsArray: monthsArray, timesByMonth: timesByMonth);
  }

  @override
  List<Object> get props => [];
}
