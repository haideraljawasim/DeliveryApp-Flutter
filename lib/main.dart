import 'package:deliveryapp_flutter/presentation/navigation/GoRouter.dart';
import 'package:deliveryapp_flutter/presentation/util/AppStrings.dart';
import 'package:flutter/material.dart';

import 'di/AppModule.dart';
import 'domain/repository/UserRepository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupDI();
  final userRepository = di<UserRepository>();
  runApp(DeliveryApp(userRepository));
}

class DeliveryApp extends StatelessWidget {
  final UserRepository userRepository;

  const DeliveryApp(this.userRepository, {super.key});

  @override
  Widget build(BuildContext context) {
    final String initialLocation = userRepository.getUser()?.firstName != null
        ? AppRouts.home
        : AppRouts.welcome;
    return MaterialApp.router(
      routerConfig: appRouter(initialLocation),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false, fontFamily: AppStrings.fontFamily),
    );
  }
}
