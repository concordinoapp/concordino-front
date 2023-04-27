import 'package:concordino_front/screens/widgets/list/bottle_list.dart';
import 'package:flutter/material.dart';

import '../../core/model/bottle_model.dart';

class CavePage extends StatelessWidget {
  CavePage({Key? key, required this.list}) : super(key: key);
  List<Bottle> list;
  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 131, 4, 11),
      ),
      body: BottleList(
        bottles: list,
      )
    );
  }
}