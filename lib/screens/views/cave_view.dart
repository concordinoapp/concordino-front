import 'package:concordino_front/screens/widgets/list/bottle_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/api/bottle/get_bottle_in_cave.dart';
import '../../core/model/bottle_model.dart';
import '../../core/provider/user_provider.dart';

class CavePage extends StatelessWidget {
  CavePage({Key? key}) : super(key: key);
  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context, listen: true);

    FutureBuilder<List<Bottle>>(
      future: getBottlesInCaveHttp(
        {"token": userProvider.getProfilToken, 'cave_id': "6"},
        userProvider.getProfilToken!),
      builder: (context, snapshot) {
        
        if (snapshot.hasData) {
          return Scaffold(
            body: BottleList(
              bottles: snapshot.data!,
            )
          );
        } else if (snapshot.hasError) {
          return const Text("Error");
        } else {
          return const CircularProgressIndicator();
        }
      }
    );
    return const SizedBox();
  }
}

