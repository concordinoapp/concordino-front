// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.


import 'package:concordino_front/main.dart';
import 'package:concordino_front/screens/views/welcome_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("widget tests", () {
    testWidgets("Testing launching of the app", (tester) async {
      await tester.pumpWidget(const MyApp());
    });
    testWidgets("Testing Welcome Page", (tester) async {
      await tester.pumpWidget(const MaterialApp(home: WelcomePage()));
      expect(find.text("Bienvenue !"), findsOneWidget);
      expect(find.text("Concordino"), findsOneWidget);
      expect(find.text("Votre cave à porter de main"), findsOneWidget);
    });
  });
}
