import 'package:deliveryapp_flutter/presentation/order_completed/OrderCompletedScreen.dart';
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
      theme: ThemeData(useMaterial3: false, fontFamily: 'Brandon Grotesque'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        body: SafeArea(child: Text("Hello World")),
      ),
    );
  }
}
