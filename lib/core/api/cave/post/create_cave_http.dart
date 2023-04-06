import 'dart:convert' as convert;
import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import '../../../auth/token.dart';
import '../../../model/user_model.dart';
import '../../get_adress_http.dart';

Future<User> createCaveHttp(Map<String, dynamic> body, String token) async {
  var url = Uri.http(getAdress(), 'api/createCave', );


  var response = await http.post(url, body: jsonEncode(body), headers: ({"Token" : token}));
  if (response.statusCode == 200) {
    var jsonResponse =
        convert.jsonDecode(response.body) as Map<String, dynamic>;

    return User.fromJson(jsonResponse);
  } else {
    log('Request failed with status: ${response.statusCode}.');
    throw Exception('Failed to create cave');
  }
}
