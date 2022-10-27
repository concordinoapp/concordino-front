import 'package:concordino_front/screens/views/home_view.dart';
import 'package:concordino_front/screens/views/list_view.dart';
import 'package:flutter/material.dart';
import 'package:concordino_front/screens/views/scan_view.dart';
import 'package:camera/camera.dart';

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
          case 1:
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const HomePage(),
              ),
            );
            break;
          case 2:
            await availableCameras().then(
              (cameras) => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ScanPage(cameras: cameras[0]),
                ),
              ),
            );
            break;
          case 3:
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const HomePage(),
              ),
            );
            break;
          case 4:
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const ListPage(),
              ),
            );
            break;
        }
      },
    );
  }
}
