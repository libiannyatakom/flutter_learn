void main(List<String> arguments) async {
  var person = Person();

  print('Job 1 run');
  print('Job 2 run');
  person.getData();
  print('Job 3 run => name: ${person.name}');
  // await person.getDataAsync();
  // print('Job 3.1 run => name: ${person.name}');
  person.getDataAsync().then((_) {
    print('Job 3.1 get name: ${person.name}');
    print('Max age allowed: ${Person.maxAge}');
  });
  print('Job 4 run');
}

class Person {
  var name = 'Anonymous';

  static var maxAge = 60;

  void getData() {
    name = 'Alex'; // get from database
    print("get $name [done]");
  }

  Future<void> getDataAsync() async {
    await Future.delayed(Duration(seconds: 3));
    name = 'John';
    print("get $name [done]");
  }
}
