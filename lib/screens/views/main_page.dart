import 'package:concordino_front/screens/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

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
        onPressed: () {
          _openGallery();
        },
        child: const Icon(Icons.camera_alt),
        backgroundColor: Color.fromARGB(255, 131, 4, 11),
      ),
      appBar: AppBar(
        title: Text(_titles[_currentIndex]),
        backgroundColor: Color.fromARGB(255, 131, 4, 11),
      ),
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 200,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            activeIcon:
                Icon(Icons.search, color: Color.fromARGB(255, 131, 4, 11)),
            label: '_',
            backgroundColor: Color.fromARGB(255, 131, 4, 11),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inventory),
            label: '_',
            backgroundColor: Color.fromARGB(255, 131, 4, 11),
            activeIcon:
                Icon(Icons.inventory, color: Color.fromARGB(255, 131, 4, 11)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long),
            label: '_',
            backgroundColor: Color.fromARGB(255, 131, 4, 11),
            activeIcon: Icon(Icons.receipt_long,
                color: Color.fromARGB(255, 131, 4, 11)),
          ),
        ],
      ),
    );
  }
}
