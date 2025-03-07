import 'package:pbo_dart_console_01/singleton/user_service.dart';

void main(List<String> arguments) {
  UserService service1 = UserService();
  UserService service2 = UserService();

  if (service1 == service2) {
    print('Same');
  } else {
    print('Different');
  }

  UserServiceSingleton serviceSingleton1 = UserServiceSingleton();
  UserServiceSingleton serviceSingleton2 = UserServiceSingleton();
  UserServiceSingleton serviceSingleton3 = UserServiceSingleton();

  if (serviceSingleton1 == serviceSingleton2 && serviceSingleton2 == serviceSingleton3 && serviceSingleton1 == serviceSingleton3) {
    print('Same');
  } else {
    print('Different');
  }
}
