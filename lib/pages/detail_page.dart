import 'package:flutter/material.dart';
import '../model/api_list_data_model.dart';
import 'package:url_launcher/url_launcher.dart';

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'API: ${e.api}',
              ),
              Text(
                'Description: ${e.description}',
              ),
              Text(
                'Category: ${e.category}',
              ),
              TextButton(
                onPressed: () {
                  _launchURL(e.link);
                },
                child: Text(
                  'Link: ${e.link}',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

_launchURL(String url) async {
  //const url = ;
  final uri = Uri.parse(url);
  print(uri);
  await launchUrl(uri);
}
