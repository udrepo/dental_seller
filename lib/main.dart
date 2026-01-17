import 'package:bot_toast/bot_toast.dart';
import 'package:dental_seller/core/di/service_locator.dart' as di;
import 'package:flutter/material.dart';
import 'core/router/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await di.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'My Flutter Project',
      debugShowCheckedModeBanner: false,

      routerConfig: AppRouter.router,

      builder: BotToastInit(),

      // 3. Theme Setup
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),

      // 4. Localization (Intl) Setup
      localizationsDelegates: const [],
      supportedLocales: const [Locale('en', '')],
    );
  }
}

class AppGate extends StatelessWidget {
  const AppGate({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
