import 'package:concordino_front/application/widgets/button/elevated.dart';
import 'package:concordino_front/application/widgets/input/input.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

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
              const Text(
                "Création du compte",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25),
              ),
              const InputCustom(
                content: "E-mail",
                backgroundColor: Color.fromARGB(249, 249, 249, 249),
              ),
              const InputCustom(
                content: "Mot de passe",
                backgroundColor: Color.fromARGB(249, 249, 249, 249),
              ),
              const InputCustom(
                content: "Confirmation du mot de passe",
                backgroundColor: Color.fromARGB(249, 249, 249, 249),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Column(
                  children: const [
                    ElevatedCustom(
                      content: "Connexion",
                      textColor: Color.fromARGB(255, 107, 23, 81),
                      backgroundColor: Color.fromARGB(249, 249, 249, 249),
                      route: "/home",
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Column(
                  children: [
                    Text(
                      "J'ai déjà un compte ?",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white.withOpacity(0.5),
                          fontSize: 14),
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
