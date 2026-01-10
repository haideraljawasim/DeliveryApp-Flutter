import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entity/User.dart';
import '../../domain/repository/UserRepository.dart';

class AuthenticationCubit extends Cubit<void> {
  final UserRepository repository;

  AuthenticationCubit(this.repository) : super(null);

  Future<void> submitName(String name) async {
    final trimmed = name.trim();
    if (trimmed.isEmpty) return;

    await repository.saveUser(User(firstName: trimmed));
  }


}
