import 'user.dart';

class UserService {
  Future<User> getUser() async {
    return User();
  }
}

class UserServiceSingleton {
  static final UserServiceSingleton _instance = UserServiceSingleton._internal();

  UserServiceSingleton._internal();

  factory UserServiceSingleton() {
    return _instance;
  }

  Future<User> getUser() async {
    return User();
  }
}