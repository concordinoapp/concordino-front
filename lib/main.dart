import 'package:flutter/material.dart';
import 'application/views/home_view.dart';

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
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.white),
        ),
      ),
      home: const HomePage(),
    );
  }
}
