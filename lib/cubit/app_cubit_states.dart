import 'package:consume_api/model/api_list_data_model.dart';
import 'package:equatable/equatable.dart';

abstract class CubitStates extends Equatable {}

class InitialState extends CubitStates {
  @override
  List<Object> get props => [];
}

class LaunchedState extends CubitStates {
  @override
  List<Object> get props => [];
}

class LoadingState extends CubitStates {
  @override
  List<Object> get props => [];
}

class LoadedState extends CubitStates {
  LoadedState(this.apiData);
  final List<ApiListEntryDataModel> apiData;

  @override
  List<Object> get props => [apiData];
}

class LoadingError extends CubitStates {
  @override
  List<Object> get props => [];
}
