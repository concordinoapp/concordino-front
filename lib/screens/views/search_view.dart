import 'package:concordino_front/constants/colors.dart';
import 'package:concordino_front/screens/widgets/input/search.dart';
import 'package:concordino_front/screens/widgets/navbar.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: backgroundGradientDarkTheme,
      )),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: const [
              Text(
                "Recherche",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25),
              ),
              InputSearchCustom(
                content: "Bouteille",
                backgroundColor: Color.fromARGB(249, 249, 249, 249),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
