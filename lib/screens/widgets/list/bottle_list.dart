import 'package:concordino_front/core/model/bottle_model.dart';

import 'package:flutter/material.dart';

import '../../views/bottle_info_view.dart';
import 'add_remove_bottle_buttons.dart';

class BottleList extends StatefulWidget {
  final List<Bottle> bottles;
  const BottleList({super.key, required this.bottles});

  @override
  State<BottleList> createState() => _BottleListState();
}

class _BottleListState extends State<BottleList> {
  void removeBottleButtonFonction(Bottle bottle) {
    setState(() {
      bottle.decreaseBottle();
    });
  }

  void addBottleButtonFonction(Bottle bottle) {
    setState(() {
      bottle.addBottle();
    });
  }

  @override
  Widget build(BuildContext context) {
    if (widget.bottles.isEmpty) {
      return const Center(
        child: Text(
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            "Vous n'avez aucune bouteille dans votre cave"),
      );
    }
    return ListView.builder(
      itemCount: widget.bottles.length,
      itemBuilder: (context, index) {
        return ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BottleInfoView()),
              );
            },
            title: Text(
              widget.bottles[index].name,
              textAlign: TextAlign.start,
            ),
            subtitle: Row(
              children: [
                const Icon(Icons.wine_bar),
                Text(widget.bottles[index].quantity.toString()),
              ],
            ),
            leading: Image.network(
                "https://i.pinimg.com/originals/7b/65/c2/7b65c26ed7f87b4875051d578584b657.jpg"
                // widget.bottles[index].image!,
                ),
            trailing: SizedBox(
              width: 100,
              child: AddRemoveBottleButtons(
                  bottle: widget.bottles[index],
                  addBottle: addBottleButtonFonction,
                  removeBottle: removeBottleButtonFonction),
            ));
      },
    );
  }
}
