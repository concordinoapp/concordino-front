import 'package:flutter/material.dart';

import '../../../core/model/bottle_model.dart';

class AddRemoveBottleButtons extends StatelessWidget {
  final Bottle bottle;
  final Function addBottle;
  final Function removeBottle;

  const AddRemoveBottleButtons(
      {super.key,
      required this.bottle,
      required this.addBottle,
      required this.removeBottle});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: (() => removeBottle(bottle)),
          icon: const Icon(Icons.remove),
        ),
        IconButton(
          onPressed: () => addBottle(bottle),
          icon: const Icon(Icons.add),
        ),
      ],
    );
  }
}
//
