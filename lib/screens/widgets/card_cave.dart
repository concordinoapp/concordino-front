import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/provider/user_provider.dart';
import '../views/main_page.dart';

class CardCave extends StatelessWidget {
  final String name;
  final int quantity;

  const CardCave({Key? key, required this.name, required this.quantity})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    Random random = Random();
    return Container(
      height: 150,
      width: 100,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(12),
        color: Color.fromRGBO(
          random.nextInt(255),
          random.nextInt(255),
          random.nextInt(255),
          1,
        ),
      ),
      child: Container(
        height: 25,
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.fromLTRB(0, 120, 0, 0),
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(),
          ],
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: Column(
          children: [
            Text(
              name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              quantity.toString(),
              style: const TextStyle(fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}

//find boxshadow flutter.

class AddCardCaveButton extends CardCave {
  const AddCardCaveButton({Key? key})
      : super(
          key: key,
          name: "Ajouter une cave",
          quantity: 0,
        );

  @override
  Widget build(BuildContext context) {
    String token = Provider.of<UserProvider>(context, listen: false).token!;
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) => AddCaveDialog(token: token));
      },
      child: Container(
        height: 150,
        width: 100,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(12),
          color: Colors.black38,
        ),
        child: const Center(
            child: Icon(
          Icons.add,
          color: Colors.white,
        )),
      ),
    );
  }
}
