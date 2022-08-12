import 'dart:convert' as convert;

import 'package:concordino_front/application/widgets/bottle_list_elem.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../application/models/bottle_model.dart';

class PocList extends StatefulWidget {
  const PocList({Key? key}) : super(key: key);

  @override
  State<PocList> createState() => _PocListState();
}

class _PocListState extends State<PocList> {
  @override
  void initState() {
    super.initState();
  }

  // Future<List<BottleModel>> getBottle() async {
  void getBottle() async {
    final url = Uri.http("77.192.138.135:81", "/indexes/wine/search");
    var response = await http.post(
      url,
      headers: {
        "Content-Type": "application/json",
        "Authorization":
            "Bearer 4c33d4800d809f009d37ff04cecfd723cacecd13f0a23e66fdb4e4ad4b9b60c9"
      },
      body: convert.jsonEncode(
        <String, String>{"q": "Henry"},
      ),
    );

    final bodyData = convert.jsonDecode(response.body);

    final BottleModel oui = BottleModel.fromJson(bodyData['hits']);

    print(bodyData["hits"]);

    // List<BottleModel> bottleList = bodyData["hits"].map((element) {
    //   return BottleModel.fromJson(element);
    // }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            // FutureBuilder(
            //   future: getBottle(),
            //   builder: (context, AsyncSnapshot<List<BottleModel>> snapshot) {
            //     if (snapshot.connectionState == ConnectionState.done) {
            //       return BottleListElem(bottleData: snapshot.data![0]);
            //       // return Text(snapshot.data!.body.map());
            //     } else {
            //       return const CircularProgressIndicator();
            //     }
            //   },
            // ),
            ElevatedButton.icon(
                onPressed: getBottle,
                icon: Icon(Icons.sunny),
                label: Text("sun"))
          ],
        ),
      ),
    );
  }
}
