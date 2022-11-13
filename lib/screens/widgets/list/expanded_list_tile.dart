import 'package:flutter/cupertino.dart';

import '../../../core/model/bottle_model.dart';

class ExpandedListTile extends StatelessWidget {
  final Bottle bottle;
  const ExpandedListTile({super.key, required this.bottle});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: Container(
              child: Text(bottle.name),
            ),
          ),
          Expanded(
            child: Container(
              child: Text(bottle.quantity.toString()),
            ),
          ),
        ],
      ),
    );
  }
}
