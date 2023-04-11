import 'dart:convert' as convert;
import 'dart:convert';
import 'package:http/http.dart' as http; 
import '../../get_adress_http.dart';

Future<Map<String, dynamic>> loginHttp({required String username, required String password}) async {
  var url = Uri.http(getAdress(), '/api/public/login');

  var body = jsonEncode({"username": username, "password": password});

  var response = await http.post(url, body: body);
  if (response.statusCode == 200) {
    var jsonResponse =
        convert.jsonDecode(response.body) as Map<String, dynamic>;

    return {"success" : true, "token" : jsonResponse['Token']};
  } else {
    return {"success" : false};
  }
}
