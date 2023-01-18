import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../pages/home_page.dart';
import '../pages/welcome_page.dart';
import '../cubit/app_cubit_states.dart';
import 'app_cubits.dart';

class AppCubitLogic extends StatelessWidget {
  const AppCubitLogic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitStates>(
        builder: (context, state) {
          if (state is HomeState) {
            return const WelcomePage();
          }
          if (state is LoadedState) {
            return const HomePage();
          }
          if (state is LoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
