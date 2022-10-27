import 'package:concordino_front/screens/views/home_view.dart';
import 'package:concordino_front/screens/views/list_view.dart';
import 'package:flutter/material.dart';
import 'package:concordino_front/screens/views/community_view.dart';
import 'package:concordino_front/screens/views/search_view.dart';
import 'package:concordino_front/screens/views/scan_view.dart';
import 'package:camera/camera.dart';

class ConcordinoNavbar extends StatefulWidget {
  const ConcordinoNavbar({Key? key}) : super(key: key);

  @override
  State<ConcordinoNavbar> createState() => _ConcordinoNavbarState();
}

class _ConcordinoNavbarState extends State<ConcordinoNavbar> {
  int pageIndex = 0;

  final pages = [
    const HomePage(),
    const SearchPage(),
    // const ScanPage(),
    const ListPage(),
    const CommunityPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.group),
          label: 'Home',
          backgroundColor: Color.fromARGB(255, 131, 4, 11),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Business',
          backgroundColor: Color.fromARGB(255, 131, 4, 11),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.camera_alt),
          label: 'School',
          backgroundColor: Color.fromARGB(255, 131, 4, 11),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.inventory),
          label: 'Settings',
          backgroundColor: Color.fromARGB(255, 131, 4, 11),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.receipt_long),
          label: 'Settings',
          backgroundColor: Color.fromARGB(255, 131, 4, 11),
        ),
      ],
      onTap: (index) async {
        switch (index) {
          case 0:
            setState(() {
              pageIndex = index;
            });
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const CommunityPage(),
              ),
            );
            break;
          case 1:
            setState(() {
              pageIndex = index;
            });
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const SearchPage(),
              ),
            );
            break;
          case 2:
            setState(() {
              pageIndex = index;
            });
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
            setState(() {
              pageIndex = index;
            });
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const HomePage(),
              ),
            );
            break;
          case 4:
            setState(() {
              pageIndex = index;
            });
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const ListPage(),
              ),
            );
            break;
        }
      },
      currentIndex: pageIndex,
    );
  }
}
