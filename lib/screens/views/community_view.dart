import 'package:concordino_front/constants/colors.dart';
import 'package:concordino_front/screens/widgets/navbar.dart';
import 'package:flutter/material.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: backgroundGradientDarkTheme,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromARGB(0, 0, 0, 0),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
          ],
        ),
        body: Center(
          child: Column(
            children: const [
              Text(
                "Communauté",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25),
              ),
            ],
          ),
        ),
      bottomNavigationBar: const ConcordinoNavbar(),
      ),
    );
  }
}
