import 'package:concordino_front/screens/widgets/shapes/line.dart';
import 'package:concordino_front/screens/widgets/navbar.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            Color.fromARGB(255, 107, 23, 81),
            Color.fromARGB(230, 107, 23, 81),
            Color.fromARGB(250, 8, 7, 8),
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromARGB(0, 0, 0, 0),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
          ],
        ),
        body: Container(
          padding: const EdgeInsets.fromLTRB(20, 5, 20, 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "Liste des vins",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25),
              ),
              SizedBox(
                height: 500,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    const Text(
                      "A",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(196,196,196,196),
                          fontSize: 25),
                    ),
                    CustomPaint(
                      // size: const Size(300, 200),
                      painter: LinePainter(),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 25.0),
                      child: Text(
                        "Alsace",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25),
                      ),
                    ),
                    CustomPaint(
                      // size: const Size(300, 200),
                      painter: LinePainter(),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 25.0),
                      child: Text(
                        "Alsace",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25),
                      ),
                    ),
                    CustomPaint(
                      // size: const Size(300, 200),
                      painter: LinePainter(),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 25.0),
                      child: Text(
                        "Alsace",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25),
                      ),
                    ),
                    CustomPaint(
                      // size: const Size(300, 200),
                      painter: LinePainter(),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 25.0),
                      child: Text(
                        "Alsace",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25),
                      ),
                    ),
                    CustomPaint(
                      // size: const Size(300, 200),
                      painter: LinePainter(),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 25.0),
                      child: Text(
                        "Alsace",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25),
                      ),
                    ),
                    CustomPaint(
                      // size: const Size(300, 200),
                      painter: LinePainter(),
                    ),
                    const Text(
                      "P",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(196,196,196,196),
                          fontSize: 25),
                    ),
                    CustomPaint(
                      // size: const Size(300, 200),
                      painter: LinePainter(),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 25.0),
                      child: Text(
                        "Pinot gris",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25),
                      ),
                    ),
                    CustomPaint(
                      // size: const Size(300, 200),
                      painter: LinePainter(),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 25.0),
                      child: Text(
                        "Pinot gris",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25),
                      ),
                    ),
                    CustomPaint(
                      // size: const Size(300, 200),
                      painter: LinePainter(),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 25.0),
                      child: Text(
                        "Pinot gris",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25),
                      ),
                    ),
                    CustomPaint(
                      // size: const Size(300, 200),
                      painter: LinePainter(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const ConcordinoNavbar(),
      ),
    );
  }
}
