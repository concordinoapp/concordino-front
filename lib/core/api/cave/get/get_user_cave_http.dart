import 'dart:convert';
import 'dart:developer';
import 'package:concordino_front/core/model/cave_model.dart';
import 'package:http/http.dart' as http;

import '../../get_adress_http.dart';

Future<List<Cave>> getUserCaveHttp(Map<String, dynamic> arguments, String token) async {
  var url = Uri.http(getAdress(), '/api/caves', arguments);

  var response = await http.get(url, headers: {"Token" : token});
  if (response.statusCode == 200) {
    var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map;
    log('decodedResponse: $decodedResponse');
    return decodedResponse['data']
        .map<Cave>((cave) => Cave.fromJson(cave))
        .toList();
  } else {
    log('Request failed with status: ${response.statusCode}.');
    throw Exception('Could not get user caves');
  }
}
