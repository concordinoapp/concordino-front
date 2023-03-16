import 'dart:developer';

import 'package:http/http.dart' as http;

import '../../get_adress_http.dart';

Future<void> getUserHttp(Map<String, dynamic> arguments) async {
  var url = Uri.http(getAdress(), '/api/user', arguments);

  var response = await http.get(url);
  if (response.statusCode == 200) {
  } else {
    log('Request failed with status: ${response.statusCode}.');
    throw Exception('Failed to login');
  }
}
