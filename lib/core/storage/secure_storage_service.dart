import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'storage_service.dart';

class SecureStorageService implements StorageService {
  final FlutterSecureStorage _secureStorage;

  // Recommended config: 'EncryptedSharedPreferences' on Android prevents some known issues
  SecureStorageService() 
      : _secureStorage = const FlutterSecureStorage(
          aOptions: AndroidOptions(encryptedSharedPreferences: true),
        );

  @override
  Future<String?> get(String key) async {
    return await _secureStorage.read(key: key);
  }

  @override
  Future<void> set(String key, dynamic value) async {
    // Secure storage only stores Strings. We must convert.
    await _secureStorage.write(key: key, value: value.toString());
  }

  @override
  Future<void> remove(String key) async {
    await _secureStorage.delete(key: key);
  }

  @override
  Future<void> clear() async {
    await _secureStorage.deleteAll();
  }

  @override
  bool has(String key) {
    // Synchronous checking is NOT supported by secure storage.
    // In Clean Architecture, we usually just try to 'get' the token and check for null.
    throw UnimplementedError("Secure Storage does not support synchronous has() check");
  }
}