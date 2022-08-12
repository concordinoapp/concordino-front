import 'package:concordino_front/application/models/bottle_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BottleListElem extends StatelessWidget {
  const BottleListElem({
    Key? key,
    required this.bottleData,
  }) : super(key: key);

  final BottleModel bottleData;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Text(bottleData.title),
    );
  }
}
