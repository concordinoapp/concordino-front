import 'package:concordino_front/core/api/user/post/register_http.dart';
import 'package:flutter/material.dart';

class ElevatedCustom extends StatelessWidget {
  const ElevatedCustom(
      {Key? key,
      required this.content,
      required this.textColor,
      required this.backgroundColor,
      required this.route})
      : super(key: key);
  final String content;
  final String route;
  final Color textColor;
  final Color backgroundColor;

  // Use button on view :
  // const ElevatedCustom(content: "Connexion", textColor: Color.fromARGB(255, 107, 23, 81), backgroundColor: Color.fromARGB(249, 249, 249, 249),),

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const SizedBox(
          height: 30,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, route);
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: textColor,
            minimumSize: const Size(300, 50),
            backgroundColor: backgroundColor,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(11))),
          ),
          child: Text(content),
        ),
      ],
    );
  }
}

class RegisterCustom extends StatelessWidget {
  const RegisterCustom({
    Key? key,
    required this.content,
    required this.textColor,
    required this.backgroundColor,
    required this.pseudo,
    required this.email,
    required this.password,
    required this.confirmPassword,
  }) : super(key: key);
  final String content;
  final Color textColor;
  final Color backgroundColor;
  final TextEditingController pseudo;
  final TextEditingController email;
  final TextEditingController password;
  final TextEditingController confirmPassword;

  // Use button on view :
  // const ElevatedCustom(content: "Connexion", textColor: Color.fromARGB(255, 107, 23, 81), backgroundColor: Color.fromARGB(249, 249, 249, 249),),

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const SizedBox(
          height: 30,
        ),
        ElevatedButton(
          onPressed: () {
            if (password.text == confirmPassword.text) {
              registerHttp({
                "username": pseudo.text,
                "email": email.text,
                "password": password.text
              });
            } else {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("Les mots de passes ne correspondent pas")));
            }
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: textColor,
            minimumSize: const Size(300, 50),
            backgroundColor: backgroundColor,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(11))),
          ),
          child: Text(content),
        ),
      ],
    );
  }
}
