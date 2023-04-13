import 'package:bmi_app/userdetailsbloc/user_details_event.dart';
import 'package:bmi_app/userdetailsbloc/user_details_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeightBloc extends Bloc<WeightEvent, WeightState> {
  WeightBloc() : super(WeightState(i: 50)) {
    on<IncreaseWeightEvent>((event, emit) => emit(WeightState(i: ++state.i)));
    on<DecreaseWeightEvent>((event, emit) => emit(WeightState(i: --state.i)));
  }
}
