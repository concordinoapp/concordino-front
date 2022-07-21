import 'package:flutter/material.dart';

class ElevatedCustom extends StatelessWidget {
  const ElevatedCustom(
      {Key? key,
      required this.content,
      required this.textColor,
      required this.backgroundColor})
      : super(key: key);
  final String content;
  final Color textColor;
  final Color backgroundColor;

  // Use button on view :
  // const ElevatedCustom(content: "Connexion", textColor: Color.fromARGB(255, 107, 23, 81), backgroundColor: Color.fromARGB(249, 249, 249, 249),),

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: backgroundColor,
              onPrimary: textColor,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(11))),
            ),
            child: Text(content),
          ),
        ],
      ),
    );
  }
}

//find boxshadow flutter.