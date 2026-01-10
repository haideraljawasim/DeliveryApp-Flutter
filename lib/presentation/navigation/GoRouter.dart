import 'package:deliveryapp_flutter/presentation/screen/basket/MyBasketScreen.dart';
import 'package:deliveryapp_flutter/presentation/screen/home_screen/HomeScreen.dart';
import 'package:deliveryapp_flutter/presentation/splash_screen/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../data/UserLocalDataSource.dart';
import '../authentication_screen/AuthenticationScreen.dart';
import '../screen/delivery_status/DeliveryStatusScreen.dart';
import '../screen/order_completed/OrderCompletedScreen.dart';
import '../welcome_screen/WelcomeScreen.dart';

GoRouter appRouter(UserLocalDataSource userLocalDataSource) {
  return GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: AppRouts.splash,
        builder: (BuildContext context, GoRouterState state) {
          return SplashScreen(userLocalDataSource);
        },
      ),
      GoRoute(
        path: AppRouts.welcome,
        builder: (BuildContext context, GoRouterState state) {
          return const WelcomeScreen();
        },
      ),
      GoRoute(
        path: AppRouts.authentication,
        builder: (BuildContext context, GoRouterState state) {
          return const AuthenticationScreen();
        },
      ),
      GoRoute(
        path: AppRouts.home,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeScreen();
        },
      ),
      GoRoute(
        path: AppRouts.orderCompleted,
        builder: (BuildContext context, GoRouterState state) {
          return const OrderCompletedScreen();
        },
      ),
      GoRoute(
        path: AppRouts.deliveryStatus,
        builder: (BuildContext context, GoRouterState state) {
          return const DeliveryStatusScreen();
        },
      ),
      GoRoute(
        path: AppRouts.basket,
        builder: (BuildContext context, GoRouterState state) {
          return const MyBasketScreen();
        },
      ),
    ],
  );
}

class AppRouts {
  static const String home = '/home';
  static const String splash = '/';
  static const String welcome = '/welcome';
  static const String authentication = '/authentication';
  static const String orderCompleted = '/order_completed';
  static const String deliveryStatus = '/delivery_status';
  static const String basket = '/basket';
}
