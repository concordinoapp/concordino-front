import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import '../../get_adress_http.dart';

Future<void> getCaveHttp(Map<String, dynamic> arguments, String token) async {
  var url = Uri.http(getAdress(), '/api/cave', arguments);


  var response = await http.get(url, headers: { "Token" :  token});
  if (response.statusCode == 200) {
    var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map;
    log("caves : ${decodedResponse.toString()}");
  } else {
    log('Request failed with status: ${response.statusCode}.');
    throw Exception('Failed to login');
  }
}
