import 'package:dental_seller/core/network/dio_client.dart';
import 'package:dental_seller/core/storage/secure_storage_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final locator = GetIt.instance;

Future<void> init() async {
  // 1. External Services (Storage & Network)
  // Register Storage
  final sharedPreferences = await SharedPreferences.getInstance();
  locator.registerLazySingleton(() => sharedPreferences);

  const secureStorage = FlutterSecureStorage();
  locator.registerLazySingleton(() => secureStorage);

  // DIO
  locator.registerLazySingleton<Dio>(
    () => setupDio(locator<SecureStorageService>()),
  );
}
