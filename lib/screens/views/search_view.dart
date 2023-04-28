import 'package:concordino_front/constants/colors.dart';
import 'package:concordino_front/screens/widgets/input/search.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  SearchPage({Key? key}) : super(key: key);
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: backgroundGradientDarkTheme,
      )),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              const Text(
                "Recherche",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25),
              ),
              InputSearchCustom(
                controller: _controller,
                content: "Bouteille",
                backgroundColor: const Color.fromARGB(249, 249, 249, 249),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:search_page/search_page.dart';

// class Bottle implements Comparable<Bottle> {
//   final String name;

//   const Bottle(this.name);

//   @override
//   int compareTo(Bottle other) => name.compareTo(other.name);
// }

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'search_page',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(),
//     );
//   }
// }

// class SearchView extends StatelessWidget {
//   static const bottle = [
//     Bottle('Mike'),
//     Bottle('Todd'),
//     Bottle('Ahmad'),
//     Bottle('Anthony'),
//     Bottle('Annette'),
//   ];

//   const SearchView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Search Page'),
//       ),
//       body: ListView.builder(
//         itemCount: bottle.length,
//         itemBuilder: (context, index) {
//           final Bottle = bottle[index];

//           return ListTile(
//             title: Text(Bottle.name),
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         tooltip: 'Search bottle',
//         onPressed: () => showSearch(
//           context: context,
//           delegate: SearchPage(
//             onQueryUpdate: print,
//             items: bottle,
//             searchLabel: 'Search bottle',
//             suggestion: const Center(
//               child: Text('Filter bottle by name, surname or age'),
//             ),
//             failure: const Center(
//               child: Text('No Bottle found :('),
//             ),
//             filter: (bottle) => [
//               bottle.name,
//             ],
//             sort: (a, b) => a.compareTo(b),
//             builder: (bottle) => ListTile(
//               title: Text(bottle.name),
//             ),
//           ),
//         ),
//         child: const Icon(Icons.search),
//       ),
//     );
//   }
// }
