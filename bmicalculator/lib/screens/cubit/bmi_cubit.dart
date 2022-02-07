import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bmi_state.dart';

class BmiCubit extends Cubit<BmiState> {
  BmiCubit() : super(BmiInitial());

  void calculateBmi(double height, int weight) {
    final BmiInitial currentState = state as BmiInitial;
    final double heightinMeters = currentState.height! / 100;
  }
}
