import 'dart:convert';

import 'package:getx_api_list/models/post_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static var client = http.Client();

  Future<List<PostModel>> fetchPost() async {
    final response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));

    if (response.statusCode == 200) {
      final parsedData =
          json.decode(response.body).cast<Map<String, dynamic>>();
      return parsedData.Map<PostModel>((json) => PostModel.fromJson(json))
          .toList();
    } else {
      throw Exception("Failed to load Data");
    }
  }
}
