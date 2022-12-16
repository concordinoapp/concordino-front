import 'package:flutter/material.dart';

class bottleInfoView extends StatefulWidget {
  const bottleInfoView({super.key});

  @override
  State<bottleInfoView> createState() => _bottleInfoViewState();
}

class _bottleInfoViewState extends State<bottleInfoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const CircleAvatar(
                    radius: 50,
                    child: Icon(
                      Icons.wine_bar,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  Column(
                    children: const [
                      Text("Jean-Baptiste Adam",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                      Text("Riesling",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Icon(Icons.list),
                            Text("arômes de fruits exotiques"),
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Icon(Icons.list),
                            Text("sec et frais"),
                          ]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(Icons.list),
                          Text("base de poisson et de fruits de mer"),
                        ],
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Icon(Icons.list),
                            Text(
                                "apéritif ou en accompagnement d'un repas léger"),
                          ]),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
