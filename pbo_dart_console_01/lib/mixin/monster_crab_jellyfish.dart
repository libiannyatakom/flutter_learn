import 'fly_monster.dart';
import 'monster_jellyfish.dart';

class MonsterCrabJellyfish extends MonsterJellyfish implements FlyMonster {
  @override
  String fly() {
    return "Flying dancing and swimming";
  }
}
