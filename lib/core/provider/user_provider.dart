import 'package:flutter/cupertino.dart';

import '../model/user_model.dart';

class UserProvider extends ChangeNotifier {
  User? profil;
  String? token;

  UserProvider();

  User? get getProfil => profil;

  String? get getProfilToken => token;

  void setProfilToken(String newToken) {
    token = newToken;
    notifyListeners();
  }

  void setProfil(User newProfil) {
    profil = newProfil;
    notifyListeners();
  }

  void clearProfil() {
    profil = null;
    notifyListeners();
  }
}
