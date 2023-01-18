import 'dart:convert';
import 'package:consume_api/model/api_list_data_model.dart';
import 'package:http/http.dart' as http;

class DataServices {
  String baseUrl = "https://api.publicapis.org/";

  Future<List<DataModel>> getInfo() async {
    var apiUrl = 'entries';

    // TODO: I think this is where any cache logic should live;

    http.Response res = await http.get(
      Uri.parse(
        baseUrl + apiUrl,
      ),
    );

    try {
      if (res.statusCode == 200) {
        List<dynamic> list = json.decode(res.body)['entries'];
        // print(list);
        return list.map((e) => DataModel.fromJson(e)).toList();
      } else {
        return <DataModel>[];
      }
    } catch (e) {
      // ignore: avoid_print
      print(e);
      return <DataModel>[];
    }
  }
}