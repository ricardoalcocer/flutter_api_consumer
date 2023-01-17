import 'package:flutter/material.dart';
import 'package:consume_api/cubit/app_cubit_logic.dart';
import 'package:consume_api/cubit/app_cubits.dart';
import 'package:consume_api/pages/home_page.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<AppCubits>(
        create: (context) => AppCubits(),
        child: const AppCubitLogic(),
      ),
    );
  }
}

// class Example1 extends StatefulWidget {
//   const Example1({super.key, required this.title});

//   final String title;

//   @override
//   State<Example1> createState() => _Example1State();
// }

// class _Example1State extends State<Example1> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           widget.title,
//         ),
//       ),
//       body: const SomeStuff(),
//     );
//   }
// }
