import 'package:concordino_front/screens/widgets/list/bottle_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/api/bottle/get_bottle_in_cave.dart';
import '../../core/model/bottle_model.dart';
import '../../core/provider/user_provider.dart';

class CavePage extends StatelessWidget {
  CavePage({Key? key}) : super(key: key);
  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // var userProvider = Provider.of<UserProvider>(context, listen: true);

    // FutureBuilder<List<Bottle>>(
    //   future: getBottlesInBottleHttp(
    //     {"token": userProvider.getProfilToken},
    //     userProvider.getProfilToken!),
    //   builder: (context, snapshot) {
    //     if (snapshot.hasData) {
    //       return GridView.count(
    //         mainAxisSpacing: 20,
    //         crossAxisSpacing: 20,
    //         childAspectRatio: 0.9,
    //         scrollDirection: Axis.vertical,
    //         shrinkWrap: true,
    //         crossAxisCount: 2,
    //         children: snapshot.data!
    //             .asMap()
    //             .entries
    //             .map((bottle) => bottle.key != 0
    //                 ? Cardbottle(
    //                     quantity: bottle.value.bottles.length,
    //                     name: bottle.value.name,
    //                   )
    //                 : const AddCardbottleButton())
    //             .toList(),
    //       );
    //     } else if (snapshot.hasError) {
    //       return const Text("Error");
    //     } else {
    //       return const CircularProgressIndicator();
    //     }
    //   }
    // );
    return Scaffold(
    body: BottleList(
      bottles: list,
    )
    );
  }
}

List<Bottle> list =  
[
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
