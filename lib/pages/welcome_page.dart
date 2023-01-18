import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/app_cubits.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  // https://stackoverflow.com/questions/71211611/how-should-i-implement-the-init-method-in-a-stateful-or-stateless-widget
  // this function allows me to run getApiListData immediately after loading, which effectively makes WelcomePage invisible
  Future init(BuildContext context) async {
    BlocProvider.of<AppCubits>(context).getApiListData();
  }

  @override
  Widget build(BuildContext context) {
    init(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          TextButton(
              onPressed: () {
                BlocProvider.of<AppCubits>(context).getApiListData();
              },
              child: const Text("Press Me")),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "this stuff",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
