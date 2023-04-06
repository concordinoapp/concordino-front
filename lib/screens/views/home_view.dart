
import 'package:concordino_front/constants/colors.dart';
import 'package:concordino_front/core/provider/user_provider.dart';
import 'package:concordino_front/screens/widgets/card_cave.dart';
import 'package:concordino_front/screens/widgets/card_stat.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../core/api/cave/get/get_user_cave_http.dart';
import '../../core/model/cave_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context, listen: true);
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
              AddCardCaveButton(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Mes Bouteilles :",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
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
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Mes Caves :",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 10, color: Colors.black),
                    ),
                    onPressed: () {},
                    child: const Text('VOIR TOUT'),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(35, 10, 35, 20),
                child: FutureBuilder<List<Cave>>(
                    future: getUserCaveHttp({"token": userProvider.getProfilToken}, userProvider.getProfilToken!),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return GridView.count(
                          mainAxisSpacing: 20,
                          crossAxisSpacing: 20,
                          childAspectRatio: 0.9,
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          crossAxisCount: 2,
                          children: snapshot.data!
                              .asMap().entries.map((cave) => cave.key == 1 ? CardCave(
                                    quantity: cave.value.bottles.length,
                                    name: cave.value.name,
                                  ) 
                                  : 
                                  const AddCardCaveButton()) 
                              .toList(),
                        );
                      } else if (snapshot.hasError) {
                        return const Text("Error");
                      } else {
                        return const CircularProgressIndicator();
                      }
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
