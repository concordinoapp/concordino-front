import 'package:flutter/material.dart';

class CardStat extends StatefulWidget {
  const CardStat({Key? key}) : super(key: key);

  @override
  State<CardStat> createState() => _CardStatState();
}

class _CardStatState extends State<CardStat> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      width: 150,
      height: 100,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: NetworkImage(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
