import 'dart:developer';

import 'package:http/http.dart' as http;

import '../../get_adress.dart';

Future<void> registerHttp(Map<String, dynamic> arguments) async {
  var url = Uri.http(getAdress(), '/user/create');

  var response = await http.post(url, body: arguments);
  if (response.statusCode == 200) {
  } else {
    log('Request failed with status: ${response.statusCode}.');
    throw Exception('Failed to login');
  }
}
