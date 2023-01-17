import 'package:bloc/bloc.dart';
import 'package:consume_api/cubit/app_cubit_states.dart';

class AppCubits extends Cubit<CubitStates> {
  // AppCubits(super.initialState);
  AppCubits() : super(InitialState()) {
    emit(Homestate());
  }
}
