import 'package:concordino_front/application/widgets/card_cave.dart';
import 'package:concordino_front/application/widgets/card_stat.dart';
import 'package:concordino_front/application/widgets/input/input.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
        body: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Mes Bouteilles :",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 10),
                    ),
                    onPressed: () {},
                    child: const Text('VOIR TOUT'),
                  ),
                ],
              ),
              SizedBox(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    CardStat(),
                    CardStat(),
                    CardStat(),
                    CardStat(),
                    CardStat(),
                    CardStat(),
                    CardStat(),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Mes Caves :",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 10),
                    ),
                    onPressed: () {},
                    child: const Text('VOIR TOUT'),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(35, 10, 35, 20),
                child: GridView.count(
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 0.9,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: [CardCave(), CardCave(), CardCave(), CardCave()],
                  crossAxisCount: 2,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.group),
              label: 'Home',
              backgroundColor: Color.fromARGB(255, 131, 4, 11),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Business',
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt),
              label: 'School',
              backgroundColor: Colors.purple,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.inventory),
              label: 'Settings',
              backgroundColor: Color.fromARGB(255, 131, 4, 11),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.receipt_long),
              label: 'Settings',
              backgroundColor: Colors.pink,
            ),
          ],
          onTap: (int oui) {},
        ),
      ),
    );
  }
}
