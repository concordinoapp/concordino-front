import 'package:concordino_front/screens/views/community_view.dart';
import 'package:concordino_front/screens/views/welcome_view.dart';
import 'package:concordino_front/screens/views/login_view.dart';
import 'package:concordino_front/screens/views/register_view.dart';
import 'package:concordino_front/screens/views/home_view.dart';
import 'package:concordino_front/screens/views/search_view.dart';
import 'package:concordino_front/screens/views/list_view.dart';
import 'package:concordino_front/screens/views/splash_page.dart';
import 'package:concordino_front/core/provider/user_provider.dart';
import 'package:concordino_front/themes/theme.dart';

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => UserProvider()),
  ], child: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
 
      // 100: Color.fromRGBO(0, 137, 123, 0.2),
      // 200: Color.fromRGBO(0, 137, 123, 0.3),
      // 300: Color.fromRGBO(0, 137, 123, 0.4),
      // 400: Color.fromRGBO(0, 137, 123, 0.5), 
      // 500: Color.fromRGBO(0, 137, 123, 0.6),
      // 600: Color.fromRGBO(0, 137, 123, 0.7),
      // 700: Color.fromRGBO(0, 137, 123, 0.8),
      // 800: Color.fromRGBO(0, 137, 123, 0.9),
      // 900: Color.fromRGBO(0, 137, 123, 1),

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  MaterialColor mycolor = MaterialColor( const Color.fromRGBO(0, 137, 123, 1).value, <int, Color>{
      1: const Color.fromRGBO(34, 38, 44, 1),
      2: const Color.fromRGBO(53, 51, 55, 1),
      3: const Color.fromRGBO(100, 24, 26, 1),
      4: const Color.fromRGBO(111, 49, 48, 1),
      5: const Color.fromRGBO(255, 244, 243, 1),
      6: const Color.fromRGBO(255, 250, 250, 1),
    },
  );

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Concordino',
      // debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      // fontFamily: GoogleFonts.lato().fontFamily,
      // brightness: Brightness.dark,
      //   textTheme: const TextTheme(
      //     bodyText1: TextStyle(color: Colors.white),
      //   ),
      // ),
      // theme: ThemeData(
      //   // Define the default brightness and colors.
      //   brightness: Brightness.dark,
      //   primaryColor: Color.fromARGB(255, 189, 2, 2),
      //   primaryColorDark: Color.fromARGB(255, 189, 2, 2),

      //   // Define the default font family.
      //   // fontFamily: GoogleFonts.lato().fontFamily,

      //   // Define the default `TextTheme`. Use this to specify the default
      //   // text styling for headlines, titles, bodies of text, and more.
      //   textTheme: const TextTheme(
      //     headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      //     headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
      //     bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
      //   ),
      // ),

      themeMode: ThemeMode.dark, //ThemeMode.system,
      theme: AppThemeData.lightThemeData,
      darkTheme: AppThemeData.darkThemeData,

      initialRoute: '/splash',
      routes: {
        '/': (context) => const WelcomePage(),
        '/splash': (context) => const SplashConcordino(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/home': (context) => const HomePage(),
        '/search': (context) => const SearchPage(),
        // '/scan': (context) => const ScanPage(),
        '/list': (context) => ListPage(),
        '/community': (context) => const CommunityPage(),
      },
    );
  }
}
