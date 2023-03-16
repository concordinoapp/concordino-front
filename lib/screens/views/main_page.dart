import 'package:concordino_front/core/auth/token.dart';
import 'package:concordino_front/screens/views/search_view.dart';
import 'package:concordino_front/screens/widgets/input/input.dart';
import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
import 'package:concordino_front/screens/views/scan_view.dart';
import 'package:camera/camera.dart';

import '../../core/api/cave/post/create_cave_http.dart';
import 'home_view.dart';
import 'list_view.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 1;

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

  // _openGallery() async {
  //   imageFile = await ImagePicker().pickImage(source: ImageSource.camera);
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        heroTag: "Scan",
        key: const Key("Scan"),
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
      body: Stack(children: [
        pages[_currentIndex],
        Positioned(
          bottom: 90,
          right: 10,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) =>  AddCaveView(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(20),
              backgroundColor: const Color.fromARGB(255, 131, 4, 11),
              foregroundColor: Theme.of(context).primaryColor,
            ),
            child: const Icon(
              Icons.add,
              color: Colors.white,
              size: 20,
            ),
          ),
        )
      ]),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 200,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            activeIcon: Icon(
              Icons.search,
              color: Color.fromARGB(255, 131, 4, 11),
              size: 35,
            ),
            label: '',
            backgroundColor: Color.fromARGB(255, 131, 4, 11),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inventory),
            label: '',
            backgroundColor: Color.fromARGB(255, 131, 4, 11),
            activeIcon: Icon(
              Icons.inventory,
              color: Color.fromARGB(255, 131, 4, 11),
              size: 35,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long),
            label: '',
            backgroundColor: Color.fromARGB(255, 131, 4, 11),
            activeIcon: Icon(
              Icons.receipt_long,
              color: Color.fromARGB(255, 131, 4, 11),
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}

class AddCaveView extends StatelessWidget {
   AddCaveView({super.key});
  TextEditingController controler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(title: const Text("Add Cave"), backgroundColor: const Color.fromARGB(255, 131, 4, 11),),
    body: Center(child: Column(
      children: [
        InputCustom(content: "Nom cave", controler: controler, backgroundColor:  Colors.white),
        const SizedBox(height: 20,),
        ElevatedButton(onPressed: () {
          createCaveHttp({"token": getToken() ,"name" : controler.text});
        }, style: ElevatedButton.styleFrom(

          backgroundColor: const Color.fromARGB(255, 131, 4, 11),

        ), 
        child: const Text("Ajouter"),)
      ],
    )),);
  }
}