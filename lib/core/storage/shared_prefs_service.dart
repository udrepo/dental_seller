import 'package:dental_seller/core/storage/storage_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsService implements StorageService {
  final SharedPreferences _prefs;

  SharedPrefsService(this._prefs);

  @override
  dynamic get(String key) {
    return _prefs.get(key);
  }

  @override
  Future<void> set(String key, dynamic value) async {
    if (value is String) {
      await _prefs.setString(key, value);
    } else if (value is bool) {
      await _prefs.setBool(key, value);
    } else if (value is int) {
      await _prefs.setInt(key, value);
    } else if (value is double) {
      await _prefs.setDouble(key, value);
    } else if (value is List<String>) {
      await _prefs.setStringList(key, value);
    } else {
      throw Exception("Type not supported by SharedPreferences");
    }
  }

  @override
  Future<void> remove(String key) async {
    await _prefs.remove(key);
  }

  @override
  Future<void> clear() async {
    await _prefs.clear();
  }
  
  @override
  bool has(String key) {
    return _prefs.containsKey(key);
  }
}