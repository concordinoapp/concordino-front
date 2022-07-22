import 'package:flutter/material.dart';

class OutlinedCustom extends StatelessWidget {
  const OutlinedCustom(
      {Key? key,
      required this.content,
      required this.textColor,
      required this.borderColor})
      : super(key: key);
  final String content;
  final Color textColor;
  final Color borderColor;

  // Use button on view :
  // const OutlinedCustom(content: "J'ai déjà un compte", textColor: Color.fromARGB(249, 249, 249, 249), borderColor: Color.fromARGB(249, 249, 249, 249),),

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(height: 30),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              primary: textColor,
              side: BorderSide(color: borderColor, width: 1),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(11))),
            ),
            child: Text(content),
          ),
        ],
    );
  }
}

//find boxshadow flutter.