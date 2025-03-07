import 'package:pbo_dart_console_01/abstract/fly_monster.dart';

import 'monster.dart';

class MonsterCrab extends Monster implements FlyMonster {
  String pinch() => "Nut.. nut..";

  @override
  String fly() {
    return "Flying hovering";
  }

  @override
  String killHero() {
    return "Yummy happy";
  }

  @override
  String move() {
    return "running slowly";
  }
}