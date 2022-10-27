import 'dart:developer';

import 'package:http/http.dart' as http;

import '../model/user_model.dart';

Future<void> loginHttp(Map<String, dynamic> arguments) async {
  var url = Uri.https('www.googleapis.com', '/user/create');

  var response = await http.post(url, body: arguments);
  if (response.statusCode == 200) {
  } else {
    log('Request failed with status: ${response.statusCode}.');
    throw Exception('Failed to login');
  }
}
