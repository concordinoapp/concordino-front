import 'package:concordino_front/constants/colors.dart';
import 'package:concordino_front/core/api/user/post/login_http.dart';
import 'package:concordino_front/core/provider/user_provider.dart';
import 'package:concordino_front/screens/widgets/input/input.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final textControllerUsername = TextEditingController();

  final textControllerPassword = TextEditingController();

  void navigateToHome(context) {
    Navigator.pushReplacementNamed(context, "/main");
  }

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
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          loginHttp(
                            username: textControllerUsername.text,
                            password: textControllerPassword.text
                          ).then((data) {
                            if (data["success"] == true) {
                                  Provider.of<UserProvider>(context, listen: false).setProfilToken(data["token"]);

                              navigateToHome(context);
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text("login failed")));
                            }
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor:
                              const Color.fromARGB(255, 107, 23, 81),
                          minimumSize: const Size(300, 50),
                          backgroundColor:
                              const Color.fromARGB(249, 249, 249, 249),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(11))),
                        ),
                        child: const Text("Connexion"))
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
