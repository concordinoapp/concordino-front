import 'package:flutter/material.dart';

class InputCustom extends StatelessWidget {
  const InputCustom(
      {Key? key, required this.content, this.backgroundColor})
      : super(key: key);
  final String content;
  final Color? backgroundColor;

  // Use button on view :
  // const InputCustom(content: "E-mail", backgroundColor: Color.fromARGB(249, 249, 249, 249),),

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          height: 55,
          width: 300,
          child: TextField(
            style: const TextStyle(color: Colors.brown),
            decoration: InputDecoration(
              hintStyle: const TextStyle(color: Colors.redAccent),
              contentPadding: const EdgeInsets.all(20.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(11),
                borderSide: BorderSide(width: 0, color: backgroundColor ?? Theme.of(context).colorScheme.background),
              ),
              filled: true,
              fillColor: backgroundColor,
              hintText: content,
            ),
          ),
        ),
      ],
    );
  }
}

//find boxshadow flutter.
