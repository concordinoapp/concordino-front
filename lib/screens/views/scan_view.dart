import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class ScanPage extends StatelessWidget {
  const ScanPage({Key? key}) : super(key: key);
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
            children: const [
              Text(
                "Connexion",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25),
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
          onTap: (index) {
            switch (index) {
              case 0:
                Navigator.pushNamed(context, "/home");
                break;
              case 1:
                Navigator.pushNamed(context, "/home");
                break;
              case 2:
                Navigator.pushNamed(context, "/scan");
                break;
              case 3:
                Navigator.pushNamed(context, "/home");
                break;
              case 4:
                Navigator.pushNamed(context, "/list");
                break;
            }
          },
        ),
      ),
    );
  }
}
