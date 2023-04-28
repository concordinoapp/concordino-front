import 'package:flutter/material.dart';

class InputCustom extends StatelessWidget {
  final Function(int) quantitySetter;
  const InputCustom(
      {Key? key,
      required this.content,
      required this.controler,
      required this.quantitySetter,
      required this.backgroundColor,
      required this.passwordVisible})
      : super(key: key);
  final TextEditingController controler;
  final String content;
  final Color backgroundColor;
  final bool passwordVisible;

  // Use button on view :
  // const InputCustom(content: "E-mail", backgroundColor: Color.fromARGB(249, 249, 249, 249),),

  // void initState(){
  //   passwordVisible = true;
  // }
  @override
  Widget build(BuildContext context) {
    InputDecoration inputDecoration = InputDecoration(
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
    );

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
            obscureText: passwordVisible,
            controller: controler,
            decoration: inputDecoration,
          ),
        ),
      ],
    );
  }
}

//find boxshadow flutter.
