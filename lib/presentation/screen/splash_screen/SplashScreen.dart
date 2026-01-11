import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../data/UserLocalDataSource.dart';
import '../../navigation/GoRouter.dart';

class SplashScreen extends StatefulWidget {
  final UserLocalDataSource userLocalDataSource;

  const SplashScreen(this.userLocalDataSource, {super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), () {
      final hasUser = widget.userLocalDataSource.hasUser();

      if (hasUser) {
        context.go(AppRouts.home);
      } else {
        context.go(AppRouts.welcome);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Image(
          image: AssetImage('assets/images/splash_screen_image.png'),
        ),
      ),
    );
  }
}
