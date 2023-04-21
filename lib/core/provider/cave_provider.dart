import 'dart:developer';

import 'package:flutter/cupertino.dart';

import '../model/cave_model.dart';

class CaveProvider extends ChangeNotifier {
  List<Cave> caves = [];
  List<String> cavesNames = [];
  String? token;

  CaveProvider();

  List<Cave> get getCaves => caves;

  void setCaves(List<Cave> listCave) {
    caves = listCave;
    cavesNames = listCave.map((e) => e.name).toList();
    notifyListeners();
  }

  Cave getCaveByName(String name)
  {
    return caves.firstWhere((element) => element.name == name);
  }
}
