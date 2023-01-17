import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Example1(
        title: 'Load JSON from API',
      ),
    );
  }
}

class Example1 extends StatefulWidget {
  const Example1({super.key, required this.title});

  final String title;

  @override
  State<Example1> createState() => _Example1State();
}

class _Example1State extends State<Example1> {
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(
  //     () {
  //       _counter++;
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
        ),
        // actions: [
        // IconButton(
        //   icon: const Icon(Icons.refresh_rounded),
        //   tooltip: 'Refresh',
        //   onPressed: () {
        //     // ScaffoldMessenger.of(context).showSnackBar(
        //     //   const SnackBar(
        //     //     content: Text(
        //     //       'This is a snackbar',
        //     //     ),
        //     //   ),
        //     // );
        //   },
        // ),
        // ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              '{"test":"data","test":"data","test":"data","test":"data","test":"data","test":"data"}',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(
          Icons.refresh_rounded,
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
