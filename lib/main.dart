import 'package:deliveryapp_flutter/presentation/navigation/GoRouter.dart';
import 'package:flutter/material.dart';

import 'di/AppModule.dart';

void main() async {
  await setupDI();
  runApp(DeliveryApp());
}

class DeliveryApp extends StatelessWidget {
  const DeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false, fontFamily: 'Brandon Grotesque'),
    );
  }
}
