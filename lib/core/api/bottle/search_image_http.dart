import 'dart:developer';
import 'dart:io';
import 'package:dio/dio.dart';
import '../../model/cave_bottle_model.dart';
import '../get_adress_http.dart';

Future<List<CaveBottle>> searchImageHttp(File file, String token) async {
  var url = Uri.http(getAdress(), 'api/imageSearch');

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

  var response = await dio.post(
    url.toString(),
    data: formData,
    options: options,
  );
  if (response.statusCode == 200) {
    List<CaveBottle> bottlesList = [];
    log("bah bah ${response.data['data'].length.toString()}");
    if (response.data['data'].length != 0)
      log("huhuh h ${response.data['data'][0]["id"]}");

    response.data["data"].map((e) => bottlesList.add(CaveBottle(
        id: response.data["data"][e]["id"],
        name: response.data["data"][e]["name"],
        image: response.data["data"][e]["image"],
        designation: response.data["data"][e]["designation"],
        country: response.data["data"][e]["country"],
        province: response.data["data"][e]["province"],
        winery: response.data["data"][e]["winery"],
        variety: response.data["data"][e]["variety"])));

    int length = response.data["data"].length;
    for (int e = 0; e < length; e++) {
      bottlesList.add(CaveBottle(
          id: response.data["data"][e]["id"],
          name: response.data["data"][e]["name"],
          image: response.data["data"][e]["image"],
          designation: response.data["data"][e]["designation"],
          country: response.data["data"][e]["country"],
          province: response.data["data"][e]["province"],
          winery: response.data["data"][e]["winery"],
          variety: response.data["data"][e]["variety"]));

      log("added ${response.data["data"][e]["name"]}");
    }

    log('list length ${bottlesList.length.toString()}');
    return bottlesList;
  } else {
    return [];
  }
}
