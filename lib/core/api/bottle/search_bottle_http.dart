import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

import '../../model/bottle_model.dart';
import '../get_adress_http.dart';

Future<List<Bottle>> searchBottleHttp(
    Map<String, dynamic> arguments, String token) async {
  var url = Uri.http(getAdress(), '/api/bottles', arguments);

  var response = await http.get(url, headers: {"Token": token});
  if (response.statusCode == 200) {
    var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map;
    log('decodedResponse: $decodedResponse');
    return decodedResponse['data']
        .map<Bottle>((cave) => Bottle.fromJson(cave))
        .toList();
  } else {
    log('Request failed with status: ${response.statusCode}.');
    throw Exception('Could not get bottles');
  }
}
