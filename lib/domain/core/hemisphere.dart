import 'package:equatable/equatable.dart';

class Hemisphere extends Equatable {
  final List<int> monthsArray;
  final List<String> timesByMonth;

  const Hemisphere({required this.monthsArray, required this.timesByMonth});

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}