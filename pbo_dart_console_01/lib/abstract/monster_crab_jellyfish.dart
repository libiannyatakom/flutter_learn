import 'package:pbo_dart_console_01/abstract/fly_monster.dart';
import 'package:pbo_dart_console_01/abstract/monster_jellyfish.dart';

class MonsterCrabJellyfish extends MonsterJellyfish implements FlyMonster {
  @override
  String fly() {
    return "Flying dancing and swimming";
  }
}