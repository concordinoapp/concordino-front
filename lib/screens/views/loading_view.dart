import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class LoadingPage extends StatelessWidget {
const LoadingPage({Key? key}) : super(key: key);
  @override

  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: RiveAnimation.asset(
          'assets/images/loading_wine.riv',
          // fit: BoxFit.cover,
        ),
      ),
    );
  }
}
