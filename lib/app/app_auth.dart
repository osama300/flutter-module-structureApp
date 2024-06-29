import '../core/constants/constants.dart';
import '../core/utils/prefs.dart';

class AppAuth {
  Future<void> login(dynamic user) async {
    Prefs.setData(Keys.tokenKey, user.tokenData!.token);
    Prefs.setData(Keys.nameKey, user.userData!.profile!.name);
    Prefs.setData(Keys.phoneKey, user.userData!.profile!.mobile);
    Prefs.setData(Keys.avatarKey, user.userData!.profile!.avatarUrl);
  }

  Future<bool> isGuest() async {
    return Prefs.hasData('guest') ? Prefs.getBool('guest') ?? false : true;
  }

  Future<void> logout() async {
    Prefs.clearAllData();
    // Prefs.c();
  }
  // checkIfLoggedInUser() async {
  //   String? userToken =await Prefs.getString(Keys.tokenKey);
  //   if (userToken.) {
  //     isLoggedInUser = true;
  //   } else {
  //     isLoggedInUser = false;
  //   }
  // }
}
