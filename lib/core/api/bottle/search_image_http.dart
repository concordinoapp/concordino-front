import 'dart:developer';
import 'dart:io';
import 'package:dio/dio.dart';
import '../get_adress_http.dart';

Future<Map<String, dynamic>> searchImageHttp(
    File file, String token) async {
  var url = Uri.https(getAdress(), 'api/imageSearch');

    Dio dio = Dio();
    FormData formData = FormData();


  formData.files.add(MapEntry(
  "file",
  await MultipartFile.fromFile(file.path),
));

  Options options = Options(
  headers: {
    "Token": token,
  },
);


  Response response = await dio.post(
  url.toString(),
  data: formData,
  options: options,
);
  if (response.statusCode == 200) {
        log(response.data.toString());
        log(response.data["data"].runtimeType.toString());
    return {"success": true, "data": response.data["data"]};
  } else {
    return {"success": false};
  }
}
