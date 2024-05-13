import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class ApiService {
  Future<dynamic> get(String jsonAsset) async {
    String jsonString = await rootBundle.loadString(jsonAsset);
    dynamic jsonData = jsonDecode(jsonString);

    return jsonData;
  }
}
