import 'dart:core';

import 'package:flutter_full_learn/202/cache/shared_not_initialize.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum SharedKeys { counter }

class SharedManager {
  SharedPreferences? preferences;

  SharedManager() {
    init();
  }

  Future<void> init() async {
    preferences = await SharedPreferences.getInstance();
  }

  void _checkPreferences() {
    if (preferences == null) throw SharedNotInitialize();
  }

  Future<String?> saveString(SharedKeys key, String value) async {
    _checkPreferences();
    return preferences?.getString(key.name);
  }

  String? geString(SharedKeys key) {
    _checkPreferences();
    return preferences?.getString(key.name);
  }

  Future<bool> removeString(SharedKeys key) async {
    _checkPreferences();
    return (await preferences?.remove(key.name)) ?? false;
  }
}
