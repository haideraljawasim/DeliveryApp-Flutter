import 'package:flutter/material.dart';

void main() {
  runApp(const DeliveryApp());
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
        body: SafeArea(child: Text("Hello World")),
      ),
    );
  }
}
