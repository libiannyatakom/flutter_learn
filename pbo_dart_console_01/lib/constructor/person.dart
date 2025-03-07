class Person {
  String? _name;

  Person({String name = 'Anonymous'}) {
    this.name = name.isEmpty ? 'Anonymous' : name;
    print("Write log person");
  }

  String get name => _name!;

  set name(String value) {
    _name = value;
  }
}
