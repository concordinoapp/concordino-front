import 'dart:convert';
import 'dart:developer';
import 'package:concordino_front/core/model/bottle_model.dart';
import 'package:http/http.dart' as http;

import '../get_adress_http.dart';

Future<List<Bottle>> getBottlesInCaveHttp(
    Map<String, dynamic> arguments, String token) async {
  var url = Uri.http(getAdress(), '/api/bottlesInCave', arguments);

  var response = await http.get(url, headers: {"Token": token});
  if (response.statusCode == 200) {
    var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map;
    log('decodedResponse: $decodedResponse');
    return decodedResponse['data']
        .map<Bottle>((bottle) => Bottle.fromJson(bottle))
        .toList();
  } else if (response.body == '{"error":"cave is empty"}') {
    List<Bottle> list = [];
    return list;
  } else {
    log('Request failed with status: ${response.statusCode}.');
    throw Exception('Could not get user bottles');
  }
}
