import 'package:concordino_front/screens/views/community_view.dart';
import 'package:concordino_front/screens/views/main_page.dart';
import 'package:concordino_front/screens/views/welcome_view.dart';
import 'package:concordino_front/screens/views/login_view.dart';
import 'package:concordino_front/screens/views/register_view.dart';
import 'package:concordino_front/screens/views/home_view.dart';
import 'package:concordino_front/screens/views/search_view.dart';
import 'package:concordino_front/screens/views/list_view.dart';
import 'package:concordino_front/screens/views/splash_page.dart';
import 'package:concordino_front/core/provider/user_provider.dart';

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => UserProvider()),
  ], child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Concordino',
      home: MainPage(),
      // initialRoute: '/splash',
      routes: {
        '/main': (context) => const MainPage(),
        // '/': (context) => const WelcomePage(),
        '/splash': (context) => const SplashConcordino(),
        // '/': (context) => const LoginPage(),
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
