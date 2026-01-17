import 'package:dio/dio.dart';
import '../services/secure_storage_service.dart';

Dio setupDio(SecureStorageService storage) {
  final dio = Dio();

  dio.options = BaseOptions(
    baseUrl: '',
    connectTimeout: const Duration(seconds: 60),
    receiveTimeout: const Duration(seconds: 60),
    headers: {'Content-Type': 'application/json', 'Accept': 'application/json'},
  );

  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) async {
        final token = await storage.getToken();
        //   final cashOfficeId = await storage.getCashOfficeId();

        if (token != null && token.isNotEmpty) {
          options.headers['Authorization'] = 'Bearer $token';
        }

        // if (cashOfficeId != null && cashOfficeId.isNotEmpty) {
        options.headers['user-cash-office-id'] = 12;
        // }

        return handler.next(options);
      },
      onError: (DioException e, handler) async {
        if (e.response?.statusCode == 401) {}
        return handler.next(e);
      },
    ),
  );

  return dio;
}
