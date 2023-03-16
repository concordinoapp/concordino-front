import 'package:flutter/material.dart';

class CardCave extends StatelessWidget {
  final String name;
  final int quantity;

  const CardCave({Key? key, required this.name, required this.quantity})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
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
        color: const Color.fromARGB(255, 255, 255, 255),
        image: const DecorationImage(
          image: NetworkImage(
              'https://s.hdnux.com/photos/76/22/75/16330583/9/rawImage.jpg'),
          fit: BoxFit.cover,
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
