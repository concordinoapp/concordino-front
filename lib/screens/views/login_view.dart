import 'package:concordino_front/constants/colors.dart';
import 'package:concordino_front/screens/widgets/button/elevated.dart';
import 'package:concordino_front/screens/widgets/input/input.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final textControllerUsername = TextEditingController();
  final textControllerPassword = TextEditingController();

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
              // TODO : Rectangle second background
              // Container(
              //   alignment: const Alignment(0.0, -1.0),
              //   width: MediaQuery.of(context).size.width,
              //   height: (MediaQuery.of(context).size.height - 300),
              //   color: Colors.amberAccent,
              // ),
              const Text(
                "Connexion",
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
                content: "Mot de passe",
                controler: textControllerPassword,
                backgroundColor: const Color.fromARGB(249, 249, 249, 249),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Column(
                  children: const [
                    ElevatedCustom(
                      content: "Connexion",
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
                        Navigator.pushNamed(context, "/register");
                      },
                      child: Text(
                        "Je n'ai pas de compte",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 14),
                      ),
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
