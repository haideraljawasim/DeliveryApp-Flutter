
import 'package:deliveryapp_flutter/domain/entity/User.dart';
import 'package:flutter/cupertino.dart';

import '../../domain/repository/UserRepository.dart';
import '../UserLocalDataSource.dart';

class UserRepositoryImpl implements UserRepository{
  final UserLocalDataSource localDataSource;
  UserRepositoryImpl(this.localDataSource);

  @override
  User? getUser() {
    final name = localDataSource.getName();
    if (name == null) return null;
    return User(firstName: name);
  }

  @override
  Future<void> saveUser(User user) {
    return localDataSource.saveName(user.firstName);
  }

}
