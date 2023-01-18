import 'package:bloc/bloc.dart';
import 'package:consume_api/cubit/app_cubit_states.dart';
import '../services/data_services.dart';

class AppCubits extends Cubit<CubitStates> {
  // AppCubits(super.initialState);
  AppCubits({required this.data}) : super(InitialState()) {
    emit(HomeState());
  }

  final DataServices data;
  // ignore: prefer_typing_uninitialized_variables
  late final places;

  void getData() async {
    try {
      emit(LoadingState());
      places = await data.getInfo();
      emit(LoadedState(places));
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }
}
