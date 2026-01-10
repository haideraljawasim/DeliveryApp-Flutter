import 'package:deliveryapp_flutter/presentation/screen/home_screen/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../screen/delivery_status/DeliveryStatusScreen.dart';
import '../screen/order_completed/OrderCompletedScreen.dart';

final GoRouter appRouter = GoRouter(
  routes: <RouteBase>[
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
  ],
);

class AppRouts {
  static const String home = '/';
  static const String orderCompleted = '/order_completed';
  static const String deliveryStatus = '/delivery_status';
}
