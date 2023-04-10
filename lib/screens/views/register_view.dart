import 'package:concordino_front/constants/colors.dart';
import 'package:concordino_front/screens/widgets/button/elevated.dart';
import 'package:concordino_front/screens/widgets/input/input.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);

  final textControllerUsername = TextEditingController();
  final textControllerEmail = TextEditingController();
  final textControllerPassword = TextEditingController();
  final textControllerConfirmPassword = TextEditingController();

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
              InputCustom(
                content: "Pseudo",
                controler: textControllerUsername,
                backgroundColor: const Color.fromARGB(249, 249, 249, 249),
              ),
              InputCustom(
                content: "E-mail",
                controler: textControllerEmail,
                backgroundColor: const Color.fromARGB(249, 249, 249, 249),
              ),
              InputCustom(
                content: "Mot de passe",
                controler: textControllerPassword,
                backgroundColor: const Color.fromARGB(249, 249, 249, 249),
              ),
              InputCustom(
                content: "Confirmation du mot de passe",
                controler: textControllerConfirmPassword,
                backgroundColor: const Color.fromARGB(249, 249, 249, 249),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Column(
                  children: const [
                    ElevatedCustom(
                      content: "Inscription",
                      textColor: Color.fromARGB(255, 107, 23, 81),
                      backgroundColor: Color.fromARGB(249, 249, 249, 249),
                      route: "/main",
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/login");
                      },
                      child: Text("J'ai déjà un compte",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black.withOpacity(0.5),
                              fontSize: 14)),
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
