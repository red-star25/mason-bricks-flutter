import 'dart:async';

import 'package:get/get.dart';

import 'pref_keys.dart';
import 'preference.dart';

class SharedPreferenceHelper {
  final Preference _sharedPreference = Get.find<Preference>();

  // General Methods: ----------------------------------------------------------
  Future<void> saveAuthToken(String authToken) async {
    await _sharedPreference.setString(PrefKeys.authToken, authToken);
  }

  String? get authToken {
    return _sharedPreference.getString(PrefKeys.authToken);
  }

  Future<void> saveFcmToken(String fcmToken) async {
    await _sharedPreference.setString(PrefKeys.fcmToken, fcmToken);
  }

  String? get fcmToken {
    return _sharedPreference.getString(PrefKeys.fcmToken);
  }

  Future<bool> removeAuthToken() async {
    return _sharedPreference.remove(PrefKeys.authToken);
  }

  Future<void> setIsFirstTime(bool isFirstTime) async {
    await _sharedPreference.setBool(PrefKeys.isFirstTime, isFirstTime);
  }

  bool get getIsFirstTime {
    return _sharedPreference.getBool(PrefKeys.isFirstTime) ?? true;
  }

  // Login:---------------------------------------------------------------------
  Future<void> saveIsLoggedIn(bool value) async {
    await _sharedPreference.setBool(PrefKeys.isLoggedIn, value);
  }

  bool get isLoggedIn {
    return _sharedPreference.getBool(PrefKeys.isLoggedIn) ?? false;
  }

  // Theme:------------------------------------------------------
  bool get isDarkMode {
    return _sharedPreference.getBool(PrefKeys.isDarkMode) ?? false;
  }

  Future<void> changeBrightnessToDark(bool value) async {
    await _sharedPreference.setBool(PrefKeys.isDarkMode, value);
  }

  // Language:---------------------------------------------------
  String? get currentLanguage {
    return _sharedPreference.getString(PrefKeys.currentLanguage) ?? 'en';
  }

  Future<void> changeLanguage(String language) async {
    await _sharedPreference.setString(PrefKeys.currentLanguage, language);
  }

  String? get getInitialRoute {
    return _sharedPreference.getString(PrefKeys.initialRoute);
  }

  Future<void> setInitialRoute(String initialRoute) async {
    await _sharedPreference.setString(PrefKeys.initialRoute, initialRoute);
  }

  String getUserPassword() {
    return _sharedPreference.getString(PrefKeys.userPassword) ?? '';
  }

  Future<void> setUserPassword(String value) async {
    await _sharedPreference.setString(PrefKeys.userPassword, value);
  }

  Future<void> clear() async {
    await _sharedPreference.clear();
  }

  Future<void> setCurrency(String value) async {
    await _sharedPreference.setString(PrefKeys.currency, value);
  }

  String getCurrency() {
    return _sharedPreference.getString(PrefKeys.currency) ?? 'SR';
  }
}
