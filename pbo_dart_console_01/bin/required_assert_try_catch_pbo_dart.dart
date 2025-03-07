void main(List<String> arguments) {
  try {
    Person p = Person(name: '');
    print(p.name);
    print(p.age);
  } catch (e) {
    print(e);
  }

  print("Hello world");
}

class Person {
  final String name;
  final int age;

  Person({required this.name, this.age = 0}) {
    assert(name != '', "You must give the person's name");
  }
}