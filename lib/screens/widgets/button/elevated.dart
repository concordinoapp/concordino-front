import 'package:flutter/material.dart';

class ElevatedCustom extends StatelessWidget {
  const ElevatedCustom(
      {Key? key,
      required this.content,
      required this.textColor,
      this.backgroundColor,
      required this.route})
      : super(key: key);
  final String content;
  final String route;
  final Color textColor;
  final Color? backgroundColor;

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
            Navigator.pushNamed(context, route);
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: textColor,
            minimumSize: const Size(300, 50),
            backgroundColor: backgroundColor ?? Theme.of(context).colorScheme.background,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(11))),
          ),
          child: Text(content),
        ),
      ],
    );
  }
}
