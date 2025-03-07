import 'package:pbo_dart_console_01/generic/datetime_secure_box.dart';
import 'package:pbo_dart_console_01/generic/int_secure_box.dart';
import 'package:pbo_dart_console_01/generic/secure_box.dart';

void main(List<String> arguments) async {
  var box1 = IntSecureBox(13579111315, "123456");
  print(box1.getData('123456'));

  var box2 = DatetimeSecureBox(DateTime.now(), '13579@');
  print(box2.getData('13579@'));

  // Using generic
  var genericBox = SecureBox<String>('Hello World', '123456!');
  print(genericBox.getData('123456!'));

  var genericBox1 = SecureBox<double>(3.14, '123456!@');
  print(genericBox1.getData('123456!@'));

  var genericBox2 = SecureBox<DateTime>(DateTime.now(), '123456!');
  print(genericBox2.getData('123456!'));

  var genericBox3 = SecureBox<Person>(Person('John Doe'), '123456');
  print(genericBox3.getData('123456')?.name);
}

class Person {
  final String name;

  Person(this.name);
}