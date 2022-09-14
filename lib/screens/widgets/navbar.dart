import 'package:flutter/material.dart';

class ConcordinoNavbar extends StatelessWidget {
  const ConcordinoNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
      onTap: (index) async {
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
    );
  }
}
