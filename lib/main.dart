import 'package:deliveryapp_flutter/presentation/splash_screen/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'di/AppModule.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('userBox');
  await setupDI();
  runApp(DeliveryApp());
}

class DeliveryApp extends StatelessWidget {
  const DeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: false, fontFamily: 'Brandon Grotesque'),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
