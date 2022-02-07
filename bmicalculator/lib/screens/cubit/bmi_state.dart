part of 'bmi_cubit.dart';

@immutable
abstract class BmiState {}

class BmiInitial extends BmiState {
  final String? gender;
  final double? height;
  final int? weight;
  final int? age;

  BmiInitial({this.gender, this.height, this.weight, this.age});
}
