import 'package:dental_seller/core/network/dio_client.dart';
import 'package:dental_seller/core/services/secure_storage_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

Future<void> init() async {
  // 1. External Services (Storage & Network)
  // Register Storage
  locator.registerLazySingleton<SecureStorageService>(
    () => SecureStorageService(),
  );

  // DIO
  locator.registerLazySingleton<Dio>(
    () => setupDio(locator<SecureStorageService>()),
  );
}
