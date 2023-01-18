import 'package:bloc/bloc.dart';
import 'package:consume_api/cubit/app_cubit_states.dart';
import '../services/api_list_data_services.dart';

class AppCubits extends Cubit<CubitStates> {
  // AppCubits(super.initialState);
  AppCubits({required this.data})
      : super(
          InitialState(),
        ) {
    emit(
      LaunchedState(),
    );
  }

  final ApiListDataServices data;
  // ignore: prefer_typing_uninitialized_variables
  late final places;

  void getApiListData() async {
    try {
      emit(
        LoadingState(),
      );
      places = await data.getApiListInfo();
      emit(
        LoadedState(places),
      );
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }
}
