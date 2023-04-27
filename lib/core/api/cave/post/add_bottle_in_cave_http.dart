import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../get_adress_http.dart';

Future<bool> addBottleInCaveHttp(
    Map<String, dynamic> body, String token) async {
  var url = Uri.http(
    getAdress(),
    'api/addBottle',
  );

  var response =
      await http.post(url, body: jsonEncode(body), headers: ({"Token": token}));
  if (response.statusCode == 200) {
    return true;
  } else {
    return false;
  }
}
