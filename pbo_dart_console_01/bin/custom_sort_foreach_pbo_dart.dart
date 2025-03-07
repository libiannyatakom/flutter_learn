void main(List<String> arguments) {
  try {
    Person p = Person(name: 'John');
    print(p.name);
    print(p.age);
  } catch (e) {
    print(e);
  }

  print("Hello world");

  List<Person> persons = [
    Person(name: 'John', age: 21, role: 'admin'),
    Person(name: 'John Doe', age: 25),
    Person(name: 'Alex', age: 23),
    Person(name: 'Raymond', age: 35, role: 'merchant'),
    Person(name: 'Noe', age: 27),
    Person(name: 'Donald', age: 33, role: 'merchant'),
    Person(name: 'Administrator', age: 27, role: 'admin')
  ];

  // persons.sort((a, b) => b.age - a.age);
  // persons.sort((a, b) => a.role.compareTo(b.role));
  /*persons.sort((a, b) {
    if (a.role.compareTo(b.role) != 0) {
      return a.role.compareTo(b.role);
    } else {
      return b.age.compareTo(a.age);
    }
  });*/
  persons.sort((a, b) {
    if (a.roleCustom - b.roleCustom != 0) {
      return a.roleCustom - b.roleCustom;
    } else {
      return b.age.compareTo(a.age);
    }
  });

  for (var person in persons) {
    print("Name \t: ${person.name}");
    print("Age \t: ${person.age}");
    print("Role \t: ${person.role}\n");
  }
}

class Person {
  final String name;
  final String role;
  final int age;

  Person({required this.name, this.age = 0, this.role = 'guest'}) {
    assert(name != '', "You must give the person's name");
  }

  int get roleCustom {
    switch (role) {
      case 'merchant':
        return 1;
        break;
      case 'guest':
        return 2;
        break;
      default:
        return 3;
    }
  }
}
