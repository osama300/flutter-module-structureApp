import 'package:doctor/core/utils/prefs.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../core/constants/constants.dart';

class AuthProvider with ChangeNotifier {
  String? _token;
  bool _isGuest = true;
  bool _isLoaded = false;
  String? get token => _token;
  bool get isGuest => _isGuest;

  Future<void> login() async {
    if (_isLoaded) {
      _token = token;
      _isGuest = false;
      notifyListeners();

    }
  }
  Future<void> logout() async {
    if (_isLoaded) {
      _token = null;
      _isGuest = true;
      notifyListeners();
      final prefs = await SharedPreferences.getInstance();
      // await prefs.remove(Keys.tokenKey);
      await prefs.clear();
    }
  }

  Future<void> loadToken() async {
    final prefs = await SharedPreferences.getInstance();
    _token = prefs.getString(Keys.tokenKey);
    if(_token !=null){
      _isGuest =false;
    }else{
      _isGuest =true;
    }
    // if (await Prefs.hasData(Keys.tokenKey)) {
    //   _token = Prefs.getString(Keys.tokenKey);
    //   if (_token!.isNotEmpty) {
    //         _isGuest = false;
    //       }
    // }

    _isLoaded = true;
    notifyListeners();
  }

  // checkIfLoggedInUser() async {
  //   String? userToken =
  //   await Prefs.getString(Keys.tokenKey);
  //   if (userToken.isNotEmpty) {
  //     isLoggedInUser = true;
  //   } else {
  //     isLoggedInUser = false;
  //   }
  // }
}
