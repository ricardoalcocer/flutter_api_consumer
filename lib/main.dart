import 'package:consume_api/services/data_services.dart';
import 'package:flutter/material.dart';
import 'package:consume_api/cubit/app_cubit_logic.dart';
import 'package:consume_api/cubit/app_cubits.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // String app_title = "Load JSON from API";

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<AppCubits>(
        create: (context) => AppCubits(
          data: DataServices(),
        ),
        child: const AppCubitLogic(),
      ),
    );
  }
}
