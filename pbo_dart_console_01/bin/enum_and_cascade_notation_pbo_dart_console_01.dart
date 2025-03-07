void main(List<String> arguments) {
  var ucoa = MonsterUcoa(status: UcoaStatus.confused);

  ucoa.move();
  ucoa.eat();
  print('-------------------------');

  // implement cascade notation
  var ucoa1 = MonsterUcoa(status: UcoaStatus.poisoned);
  print('Monster ucoa start');
  ucoa1
    ..move()
    ..eat();
}

enum UcoaStatus { normal, poisoned, confused }

class MonsterUcoa {
  final UcoaStatus status;

  MonsterUcoa({this.status = UcoaStatus.normal});

  void move() {
    switch (status) {
      case UcoaStatus.normal:
        print("Normal status");
        break;
      case UcoaStatus.poisoned:
        print('Poisoned status');
        break;
      case UcoaStatus.confused:
        print('Confused status');
        break;
    }
  }

  void eat() {
    print('Ucoa eating..');
  }
}
