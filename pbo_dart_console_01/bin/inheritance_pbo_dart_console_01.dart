import 'package:pbo_dart_console_01/inheritance/hero.dart';
import 'package:pbo_dart_console_01/inheritance/monster.dart';
import 'package:pbo_dart_console_01/inheritance/monster_crab.dart';
import 'package:pbo_dart_console_01/inheritance/monster_jellyfish.dart';

void main(List<String> arguments) async {
  Hero h = Hero();

  h.healthPoint = -10;
  print("Hero:");
  print("HP: ${h.healthPoint}");
  print(h.killMonster());

  Monster m = Monster();
  m.healthPoint = 10;
  print("\nMonster:");
  print("HP: ${m.healthPoint}");
  print(m.killHero());

  List<Monster> monsters = [];
  monsters.add(MonsterJellyfish());
  monsters.add(MonsterCrab());

  for (Monster monster in monsters) {
    if (monster is MonsterJellyfish) {
      print(monster.swim());
    }

    if (monster is MonsterCrab) {
      print(monster.pinch());
    }
  }
}
