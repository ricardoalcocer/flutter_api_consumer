import 'package:flutter/material.dart';
import '../model/api_list_data_model.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.e});
  final ApiListEntryDataModel e;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [Text(e.api), Text(e.description)],
          ),
        ),
      ),
    );
  }
}
