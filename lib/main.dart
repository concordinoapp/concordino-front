import 'package:concordino_front/poc_query/poc_query.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Concordino',
      theme: ThemeData(
        // fontFamily: GoogleFonts.lato().fontFamily,
        // brightness: Brightness.dark,
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: Colors.white),
        ),
      ),
      home: const PocList(),
    );
  }
}
