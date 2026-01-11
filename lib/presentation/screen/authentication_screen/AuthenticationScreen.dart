import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../di/AppModule.dart';
import 'AuthenticationContent.dart';
import 'AuthenticationCubit.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => di<AuthenticationCubit>(),
      child: AuthenticationScreenContent(),
    );
  }
}
