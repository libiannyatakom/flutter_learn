import 'dart:io';

import 'package:pbo_dart_console_01/constructor/person.dart';
import 'package:pbo_dart_console_01/constructor/student.dart';

void main(List<String> arguments) {
  // var input = stdin.readLineSync();
  // print("Result: $input");

  print("Person class");
  Person p = Person(name: '');
  //p.name = "Alex";
  print("Name: ${p.name}");

  print("\nStudent class");
  Student s = Student('John Doe');
  print("Student name: ${s.name}");
}