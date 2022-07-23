import 'package:flutter/material.dart';

class ElevatedCustom extends StatelessWidget {
  const ElevatedCustom(
      {Key? key,
      required this.content,
      required this.textColor,
      required this.backgroundColor,required this.routes})
      : super(key: key);
  final String content;
  final String routes;
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
            Navigator.pushNamed(context, routes);  
          },
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(300, 50),
            primary: backgroundColor,
            onPrimary: textColor,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(11))),
          ),
          child: Text(content),
        ),
      ],
    );
  }
}
