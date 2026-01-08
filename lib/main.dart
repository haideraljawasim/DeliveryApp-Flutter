import 'package:deliveryapp_flutter/presenation/screen/home_screen/component/home_top_bar.dart';
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
    return MaterialApp(
      theme: ThemeData(useMaterial3: false, fontFamily: 'IBM Plex Sans Arabic'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFEEF4F6),
        body: SafeArea(child: HomeTopBar()),
      ),
    );
  }
}
