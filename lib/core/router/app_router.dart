import 'package:bot_toast/bot_toast.dart';
import 'package:dental_seller/main.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// Global key is useful for accessing Context without a widget
final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

class AppRouter {
  static final router = GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: '/',
    observers: [BotToastNavigatorObserver()],
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const AppGate(),
      ),
    ],
  );
}
