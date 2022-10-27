import 'package:flutter/material.dart';

class InputSearchCustom extends StatelessWidget {
  const InputSearchCustom(
      {Key? key, required this.content, required this.backgroundColor})
      : super(key: key);
  final String content;
  final Color backgroundColor;

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
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(20.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(11),
                borderSide: BorderSide(width: 0, color: backgroundColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(11),
                borderSide: BorderSide(width: 0, color: backgroundColor),
              ),
              filled: true,
              fillColor: backgroundColor,
              hintText: content,
              suffixIcon: IconButton(
                onPressed: () {},
                color: const Color.fromARGB(255, 107, 23, 81),
                icon: const Icon(Icons.search),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

//find boxshadow flutter.