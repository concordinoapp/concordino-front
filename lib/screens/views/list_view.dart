import 'package:concordino_front/screens/widgets/list/bottle_list.dart';
import 'package:concordino_front/screens/widgets/navbar.dart';
import 'package:flutter/material.dart';

import '../../core/model/bottle_model.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 107, 7, 8),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.person),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
        ],
      ),
      body: BottleList(
        bottles: list,
      ),
      bottomNavigationBar: const ConcordinoNavbar(),
    );
  }
}

List<Bottle> list = [
  Bottle(
    name: "Saint emilion",
    quantity: 1,
    image:
        "https://i.pinimg.com/originals/7b/65/c2/7b65c26ed7f87b4875051d578584b657.jpg",
    date: DateTime.now(),
  ),
  Bottle(
      name: "Rouilly",
      quantity: 1,
      image:
          "https://i.pinimg.com/originals/7b/65/c2/7b65c26ed7f87b4875051d578584b657.jpg",
      date: DateTime.now()),
  Bottle(
      name: "Fauconnerie",
      quantity: 1,
      image:
          "https://i.pinimg.com/originals/7b/65/c2/7b65c26ed7f87b4875051d578584b657.jpg",
      date: DateTime.now()),
  Bottle(
      name: "Chateau lacours",
      quantity: 1,
      image:
          "https://i.pinimg.com/originals/7b/65/c2/7b65c26ed7f87b4875051d578584b657.jpg",
      date: DateTime.now()),
  Bottle(
      name: "Dorle de dames",
      quantity: 1,
      image:
          "https://i.pinimg.com/originals/7b/65/c2/7b65c26ed7f87b4875051d578584b657.jpg",
      date: DateTime.now()),
  Bottle(
      name: "Pinot noir ",
      quantity: 1,
      image:
          "https://i.pinimg.com/originals/7b/65/c2/7b65c26ed7f87b4875051d578584b657.jpg",
      date: DateTime.now()),
  Bottle(
      name: "Gewurstraminer",
      quantity: 1,
      image:
          "https://i.pinimg.com/originals/7b/65/c2/7b65c26ed7f87b4875051d578584b657.jpg",
      date: DateTime.now()),
  Bottle(
      name: "Chardonnay",
      quantity: 1,
      image:
          "https://i.pinimg.com/originals/7b/65/c2/7b65c26ed7f87b4875051d578584b657.jpg",
      date: DateTime.now()),
  Bottle(
      name: "Vin Jaune",
      quantity: 1,
      image:
          "https://i.pinimg.com/originals/7b/65/c2/7b65c26ed7f87b4875051d578584b657.jpg",
      date: DateTime.now()),
  Bottle(
      name: "Vin de paille",
      quantity: 1,
      image:
          "https://i.pinimg.com/originals/7b/65/c2/7b65c26ed7f87b4875051d578584b657.jpg",
      date: DateTime.now()),
  Bottle(
      name: "Chateau de la bilancourt",
      quantity: 1,
      image:
          "https://i.pinimg.com/originals/7b/65/c2/7b65c26ed7f87b4875051d578584b657.jpg",
      date: DateTime.now()),
  Bottle(
      name: "oouoiuoiuoiudsqoid",
      quantity: 1,
      image:
          "https://i.pinimg.com/originals/7b/65/c2/7b65c26ed7f87b4875051d578584b657.jpg",
      date: DateTime.now()),
  Bottle(
      name: "oouoiuoiuoiudsqoid",
      quantity: 1,
      image:
          "https://i.pinimg.com/originals/7b/65/c2/7b65c26ed7f87b4875051d578584b657.jpg",
      date: DateTime.now()),
];
