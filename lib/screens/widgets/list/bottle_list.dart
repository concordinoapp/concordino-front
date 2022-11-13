import 'package:concordino_front/core/model/bottle_model.dart';

import 'package:flutter/material.dart';

class BottleList extends StatefulWidget {
  final List<Bottle> bottles;
  const BottleList({super.key, required this.bottles});

  @override
  State<BottleList> createState() => _BottleListState();
}

class _BottleListState extends State<BottleList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: widget.bottles.length,
        itemBuilder: (context, index) {
          return ListTile(
              title: Text(
                widget.bottles[index].name,
                textAlign: TextAlign.start,
              ),
              subtitle: Row(
                children: [
                  Icon(Icons.wine_bar),
                  Text(widget.bottles[index].quantity.toString()),
                ],
              ),
              leading: Image.network(
                widget.bottles[index].image,
              ),
              trailing: SizedBox(
                width: 100,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          widget.bottles[index].decreaseBottle();
                        });
                      },
                      icon: const Icon(Icons.remove),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          widget.bottles[index].addBottle();
                        });
                      },
                      icon: const Icon(Icons.add),
                    ),
                  ],
                ),
              ));
        },
      ),
    );
  }
}
