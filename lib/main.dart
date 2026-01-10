import 'package:deliveryapp_flutter/presentation/navigation/GoRouter.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'data/UserLocalDataSource.dart';
import 'di/AppModule.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  final box = await Hive.openBox('userBox');

  final userLocalDataSource = UserLocalDataSource(box);

  await setupDI();
  runApp(DeliveryApp(userLocalDataSource));
}

class DeliveryApp extends StatelessWidget {
  final UserLocalDataSource userLocalDataSource;
  const DeliveryApp(this.userLocalDataSource, {super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter(userLocalDataSource),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false, fontFamily: 'Brandon Grotesque'),
    );
  }
}
