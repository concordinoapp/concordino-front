import 'package:concordino_front/screens/views/home_view.dart';
import 'package:concordino_front/screens/views/list_view.dart';
import 'package:flutter/material.dart';
import 'package:concordino_front/screens/views/search_view.dart';

class ConcordinoNavbar extends StatefulWidget {
  const ConcordinoNavbar({Key? key}) : super(key: key);

  @override
  State<ConcordinoNavbar> createState() => _ConcordinoNavbarState();
}

class _ConcordinoNavbarState extends State<ConcordinoNavbar> {
  int _pageIndex = 0;
  // String _title = "Home";

  final pages = [
    const SearchPage(),
    const HomePage(),
    // const ScanPage()
    ListPage(),
    ListPage(),
  ];

  void _onTap(int index) {
    setState(() {
      _pageIndex = index;
      switch (index) {
        case 0:
          {
            // _title = 'Communauté';
          }
          break;
        case 1:
          {
            // _title = 'Timer';
          }
          break;
        case 2:
          {
            // _title = 'Overview';
          }
          break;
        case 3:
          {
            // _title = 'Clients';
          }
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      // selectedItemColor: Colors.white,
      // unselectedItemColor: Colors.grey,
      // showSelectedLabels: false,
      // showUnselectedLabels: false,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.group),
          label: '_',
          backgroundColor: Color.fromARGB(255, 131, 4, 11),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: '_',
          backgroundColor: Color.fromARGB(255, 131, 4, 11),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.camera_alt),
          label: '_',
          backgroundColor: Color.fromARGB(255, 131, 4, 11),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.inventory),
          label: '_',
          backgroundColor: Color.fromARGB(255, 131, 4, 11),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.receipt_long),
          label: '_',
          backgroundColor: Color.fromARGB(255, 131, 4, 11),
        ),
      ],
      onTap: _onTap,

      //       await availableCameras().then(
      //         (cameras) => Navigator.push(
      //           context,
      //           MaterialPageRoute(
      //             builder: (_) => ScanPage(cameras: cameras[0]),

      currentIndex: _pageIndex,
    );
  }
}
