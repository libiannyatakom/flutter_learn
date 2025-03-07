import 'package:pbo_dart_console_01/constructor/person.dart';

class Student extends Person {
  Student(String studentName): super(name: studentName) {
    super.name = studentName.isEmpty ? "Unknown" : studentName;
    print("Write log student");
  }
}