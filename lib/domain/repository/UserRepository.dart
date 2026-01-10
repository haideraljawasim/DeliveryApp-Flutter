import '../entity/User.dart';

abstract class UserRepository {
  Future<void> saveUser(User user);
  User? getUser();
}