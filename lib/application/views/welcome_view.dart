import 'package:concordino_front/application/widgets/button/elevated.dart';
import 'package:concordino_front/application/widgets/button/outlined.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            Color.fromARGB(255, 107, 23, 81),
            Color.fromARGB(230, 107, 23, 81),
            Color.fromARGB(250, 8, 7, 8),
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromARGB(0, 0, 0, 0),
        ),
        body: Center(
          child: Column(
            children: [
              Image.asset('assets/images/logo_concordino.png'),
              const Text(
                "Bienvenue !",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 30),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Column(
                  children: [
                    Text(
                      "Concordino",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white.withOpacity(0.5),
                          fontSize: 15),
                    ),
                    Text(
                      "Votre cave à porter de main",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white.withOpacity(0.5),
                          fontSize: 15),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Column(
                  children: const [
                     ElevatedCustom(
                      content: "Connexion",
                      textColor: Color.fromARGB(255, 107, 23, 81),
                      backgroundColor: Color.fromARGB(249, 249, 249, 249),
                      routes: "/login"
                    ),
                     OutlinedCustom(
                      content: "J'ai déjà un compte",
                      textColor: Color.fromARGB(249, 249, 249, 249),
                      borderColor: Color.fromARGB(249, 249, 249, 249),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}