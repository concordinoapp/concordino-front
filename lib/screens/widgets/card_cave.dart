import 'package:flutter/material.dart';

class CardCave extends StatelessWidget {
  const CardCave({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color.fromARGB(255, 131, 4, 11),
        image: const DecorationImage(
          image: NetworkImage(
              'https://s.hdnux.com/photos/76/22/75/16330583/9/rawImage.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        // ignore: sort_child_properties_last
        child: Column(
          children: const [
            Text(
              "nom cave",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              "quantité bouteilles",
              style: TextStyle(fontSize: 12),
            )
          ],
        ),
        height: 25,
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.fromLTRB(0, 120, 0, 0),
        decoration: const BoxDecoration(
          boxShadow: [BoxShadow()],
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
          color: Color.fromARGB(255, 131, 4, 11),
        ),
      ),
    );
  }
}

//find boxshadow flutter.
