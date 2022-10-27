import 'dart:developer';

import 'package:concordino_front/core/auth/token.dart';
import 'package:concordino_front/core/provider/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';

class SplashConcordino extends StatefulWidget {
  const SplashConcordino({super.key});

  @override
  State<SplashConcordino> createState() => _SplashConcordinoState();
}

class _SplashConcordinoState extends State<SplashConcordino> {
  @override
  void initState() {
    super.initState();
    initialization();
  }

  UserProvider get user => Provider.of<UserProvider>(context, listen: false);

  void initialization() async {
    TokenAuth tokenAuth = TokenAuth();
    if (await tokenAuth.isTokenSet()) {
      user.setProfilToken(await tokenAuth.getToken());
      log(user.getProfilToken!);
      Navigator.pushReplacementNamed(context, '/home');
    } else {
      Navigator.pushReplacementNamed(context, '/');
    }
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
