import 'package:concordino_front/core/api/bottle/search_bottle_http.dart';
import 'package:concordino_front/core/provider/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InputSearchCustom extends StatelessWidget {
  const InputSearchCustom(
      {Key? key,
      required this.content,
      required this.backgroundColor,
      required this.controller})
      : super(key: key);
  final String content;
  final TextEditingController controller;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    UserProvider userProvider =
        Provider.of<UserProvider>(context, listen: true);
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
                onPressed: () {
                  if (controller.text.isNotEmpty) {
                    searchBottleHttp({"name": controller.text.toLowerCase()},
                        userProvider.token!);
                  }
                },
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
