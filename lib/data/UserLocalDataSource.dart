import 'package:hive/hive.dart';

class UserLocalDataSource {
  final Box box;

  UserLocalDataSource(this.box);

  Future<void> saveName(String name) async {
    await box.put('firstName', name);
  }

  String? getName() {
    return box.get('firstName');
  }

  bool hasUser() {
    return box.containsKey('firstName');
  }
}
