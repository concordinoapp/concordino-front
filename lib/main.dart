import 'package:concordino_front/screens/views/welcome_view.dart';
import 'package:concordino_front/screens/views/login_view.dart';
import 'package:concordino_front/screens/views/register_view.dart';
import 'package:concordino_front/screens/views/home_view.dart';
import 'package:concordino_front/screens/views/search_view.dart';
import 'package:concordino_front/screens/views/scan_view.dart';
import 'package:concordino_front/screens/views/list_view.dart';
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
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomePage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/home': (context) => const HomePage(),
        '/search': (context) => const SearchPage(),
        '/scan': (context) => const ScanPage(),
        '/list': (context) => const ListPage(),
      },
    );
  }
}
