import 'package:flutter/material.dart';

import '../model/user.dart';

class LoginProviderViewModel extends ChangeNotifier {
  User _user = User(email: '', password: '');

  User get user => _user;

  void setEmail(String email) {
    _user.email = email;
    notifyListeners();
  }

  void setPassword(String password) {
    _user.password = password;
    notifyListeners();
  }

  bool login() {
    if (_user.email == 'test@gmail.com' && _user.password == '12345678') {
      return true;
    }
    return false;
  }

    void clearFields() {
    _user = User(email: '', password: '');
    notifyListeners();
  }
}
