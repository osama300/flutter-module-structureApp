import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:doctor/core/utils/functions.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ConfigProvider with ChangeNotifier {
  Locale? _locale;
  ThemeMode _themeMode = ThemeMode.dark;
  bool _isLoaded = false;

  bool _connectivity = false;

  bool get connectivity => _connectivity;

  Locale? get locale => _locale;
  ThemeMode get themeMode => _themeMode;

  Future<void> setLocale(Locale locale) async {
    if (_isLoaded) {
      _locale = locale;
      notifyListeners();
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('locale', locale.languageCode);
    }
  }

  Future<void> setConnectivity(Locale locale) async {
    if (_isLoaded) {
      _connectivity = await Functions().checkConnection();
    }
    notifyListeners();
  }

  Future<void> setThemeMode(ThemeMode themeMode) async {
    if (_isLoaded) {
      _themeMode = themeMode;
      notifyListeners();
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(
          'themeMode', themeMode == ThemeMode.light ? 'light' : 'dark');
    }
  }

  Future<void> loadPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    final foundPlatformLocale = await findSystemLocale();
    final localeCode = prefs.getString('locale');
    final themeModeCode = prefs.getString('themeMode') ?? 'light';
    _locale =localeCode ==null ? foundPlatformLocale.toLocale(): Locale(localeCode);
    _themeMode = themeModeCode == 'light' ? ThemeMode.light : ThemeMode.dark;
    _isLoaded = true;
    notifyListeners();
  }

  Future<String> findSystemLocale() {
    try {
      Intl.systemLocale = Intl.canonicalizedLocale(Platform.localeName);
    } catch (e) {
      return Future.value(Intl.systemLocale);
    }
    return Future.value(Intl.systemLocale);
  }

}
