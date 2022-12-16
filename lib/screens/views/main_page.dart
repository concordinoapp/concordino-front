import 'package:concordino_front/screens/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:concordino_front/screens/views/scan_view.dart';
import 'package:camera/camera.dart';

import 'home_view.dart';
import 'list_view.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final pages = [
    const SearchPage(),
    const HomePage(),
    ListPage(),
  ];

  final _titles = ['Rechercher', 'Home', 'Liste'];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  XFile? imageFile;

  _openGallery() async {
    imageFile = await ImagePicker().pickImage(source: ImageSource.camera);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await availableCameras().then(
            (cameras) => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => ScanPage(cameras: cameras[0]),
              ),
            ),
          );
        },
        backgroundColor: const Color.fromARGB(255, 131, 4, 11),
        child: const Icon(Icons.camera_alt),
      ),
      appBar: AppBar(
        title: Text(_titles[_currentIndex]),
        backgroundColor: const Color.fromARGB(255, 131, 4, 11),
      ),
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 200,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            // activeIcon:
            //     Icon(Icons.search, color: Color.fromARGB(255, 131, 4, 11)),
            activeIcon: Icon(Icons.search,
            color: Color.fromARGB(255, 131, 4, 11), size: 35,),
            label: '',
            backgroundColor: Color.fromARGB(255, 131, 4, 11),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inventory),
            label: '',
            backgroundColor: Color.fromARGB(255, 131, 4, 11),
            // activeIcon:
            //     Icon(Icons.inventory, color: Color.fromARGB(255, 131, 4, 11)),
            activeIcon: Icon(Icons.inventory,
            color: Color.fromARGB(255, 131, 4, 11), size: 35,),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long),
            label: '',
            backgroundColor: Color.fromARGB(255, 131, 4, 11),
            activeIcon: Icon(Icons.receipt_long,
            color: Color.fromARGB(255, 131, 4, 11), size: 35,),
          ),
        ],
      ),
    );
  }
}
