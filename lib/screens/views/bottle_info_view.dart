import 'package:flutter/material.dart';
import 'package:concordino_front/screens/widgets/input/select.dart';
import 'package:concordino_front/screens/widgets/input/input.dart';
import 'package:provider/provider.dart';

import '../../core/api/cave/post/add_bottle_in_cave_http.dart';
import '../../core/provider/cave_provider.dart';
import '../../core/provider/user_provider.dart';

class BottleInfoView extends StatelessWidget {
  BottleInfoView({super.key});
  final TextEditingController controler = TextEditingController();

  var selectCaveValue = "";
  var quantity = 1;
  void caveSetter(String cave) {
    selectCaveValue = cave;
  }

  void quantitySetter(int quantityValue) {
    quantity = quantityValue;
  }

  @override
  Widget build(BuildContext context) {
    UserProvider userProvider =
        Provider.of<UserProvider>(context, listen: true);
    CaveProvider caveProvider =
        Provider.of<CaveProvider>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 131, 4, 11),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          foregroundColor:
                              const Color.fromARGB(255, 131, 4, 11),
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          textStyle: const TextStyle(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                              fontSize: 15)),
                      onPressed: () {
                        showModalBottomSheet<void>(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 300,
                              color: const Color.fromARGB(255, 255, 255, 255),
                              child: Center(
                                child: Column(
                                  children: <Widget>[
                                    const Padding(
                                      padding: EdgeInsets.only(
                                          left: 0,
                                          bottom: 0,
                                          right: 0,
                                          top: 20),
                                      child: Text("Jean-Baptiste Adam",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20)),
                                    ),
                                    InputCustom(
                                        content: "Quantitée",
                                        controler: controler,
                                        quantitySetter: quantitySetter,
                                        passwordVisible: false,
                                        backgroundColor: Colors.white),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 11),
                                      child: SelectCustom(
                                          list: caveProvider.cavesNames,
                                          listCaves: caveProvider.caves,
                                          caveSetter: caveSetter,
                                          backgroundColor: Colors.white),
                                    ),

                                    ElevatedButton(
                                      onPressed: () {
                                        String caveId = caveProvider
                                            .getCaveByName(selectCaveValue)
                                            .id
                                            .toString();
                                        addBottleInCaveHttp({
                                          "token": userProvider.token!,
                                          "name": controler.text,
                                          "cave_id": caveId,
                                          "bottle_id": "86978",
                                          "quantity": quantity.toString()
                                        }, userProvider.token!);
                                      },
                                      child: const Text('Ajouter'),
                                    ),
                                    // const ElevatedCustom(
                                    //   content: "Ajouter",
                                    //   textColor:
                                    //       Color.fromARGB(255, 107, 23, 81),
                                    //   backgroundColor:
                                    //       Color.fromARGB(249, 249, 249, 249),
                                    //   route: "/main",
                                    // ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: const Text('Ajouter à la cave'),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          foregroundColor:
                              const Color.fromARGB(255, 131, 4, 11),
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          textStyle: const TextStyle(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                              fontSize: 15)),
                      child: const Text('Consulter le domaine'),
                      onPressed: () {},
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(),
                    Image.asset(
                      'assets/images/wine_bottle.png',
                      scale: 4,
                    ),
                    const SideInfo(),
                  ],
                ),
                Column(
                  children: const [
                    Text("Jean-Baptiste Adam",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                    Text("Riesling",
                        style: TextStyle(
                          fontSize: 20,
                        )),
                  ],
                ),

                const Divider(),
                // descriptions bouteilles
                FittedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      WineSpecificitiesRow(title: "Région", value: "Alsace"),
                      WineSpecificitiesRow(title: "Sépage", value: "Chardonay"),
                      WineSpecificitiesRow(title: "Type", value: "Rouge"),
                      WineSpecificitiesRow(
                          title: "Terroir", value: "Granitique"),
                      WineSpecificitiesRow(title: "Année", value: "2021"),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 7.0,
                          spreadRadius: 0.0,
                          offset: Offset(2.0, 2.0),
                        ),
                      ],
                      // color: Color.fromARGB(103, 131, 4, 10),
                      border: Border.all(
                          width: 1.2,
                          color: const Color.fromARGB(255, 131, 4, 11)),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(18))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const [
                        BottleData(
                          text: "arômes de fruits exotiques",
                        ),
                        BottleData(
                          text: "Sec et frais",
                        ),
                        BottleData(text: "Base de poisson et de fruits de mer"),
                        BottleData(
                            text:
                                "apéritif ou en accompagnement d'un repas léger"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BottleData extends StatelessWidget {
  final String text;
  const BottleData({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(5, 10, 0, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // const Icon(Icons.list),

          Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class WineSpecificitiesRow extends StatelessWidget {
  final String title;
  final dynamic value;
  const WineSpecificitiesRow({
    required this.title,
    required this.value,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: Row(
        children: [
          const VerticalDivider(
            width: 7,
          ),
          Column(
            children: [
              Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(value.toString()),
            ],
          ),
          const VerticalDivider(
            width: 7,
          ),
        ],
      ),
    );
  }
}

class SideInfo extends StatelessWidget {
  const SideInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        SideInfoElem(
          icon: Icons.calendar_month_outlined,
          value: "2021",
        ),
        SideInfoElem(icon: Icons.thermostat_outlined, value: "10°C"),
        SideInfoElem(icon: Icons.oil_barrel_outlined, value: "3-4 ans")
      ],
    );
  }
}

class SideInfoElem extends StatelessWidget {
  final IconData icon;
  final String value;
  const SideInfoElem({required this.icon, required this.value, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 3, 0, 3),
      child: Row(
        children: [
          Icon(
            icon,
            size: 20,
          ),
          const VerticalDivider(
            width: 3,
          ),
          Text(value)
        ],
      ),
    );
  }
}
