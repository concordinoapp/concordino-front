import 'package:concordino_front/core/provider/user_provider.dart';
import 'package:concordino_front/screens/views/splash_page.dart';
import 'package:concordino_front/screens/views/welcome_view.dart';
import 'package:concordino_front/screens/views/login_view.dart';
import 'package:concordino_front/screens/views/register_view.dart';
import 'package:concordino_front/screens/views/home_view.dart';
import 'package:concordino_front/screens/views/scan_view.dart';
import 'package:concordino_front/screens/views/list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => UserProvider()),
  ], child: const MyApp()));
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
      initialRoute: '/splash',
      routes: {
        '/': (context) => const WelcomePage(),
        '/splash': (context) => const SplashConcordino(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/home': (context) => const HomePage(),
        '/scan': (context) => const ScanPage(),
        '/list': (context) => const ListPage(),
      },
    );
  }
}
