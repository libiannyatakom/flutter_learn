import 'package:pbo_dart_console_01/abstract/fly_monster.dart';
import 'package:pbo_dart_console_01/abstract/monster.dart';
import 'package:pbo_dart_console_01/abstract/monster_crab.dart';
import 'package:pbo_dart_console_01/abstract/monster_crab_jellyfish.dart';
import 'package:pbo_dart_console_01/abstract/monster_jellyfish.dart';

void main(List<String> arguments) async {
  List<Monster> monsters = [];
  monsters.add(MonsterJellyfish());
  monsters.add(MonsterCrab());
  monsters.add(MonsterCrabJellyfish());

  for (Monster monster in monsters) {
    if (monster is MonsterJellyfish) {
      monster.name = "Jellyfish";
    }

    if (monster is MonsterCrab) {
      monster.name = "Crab";
    }

    if (monster is FlyMonster) {
      print((monster as FlyMonster).fly());
    }

    print("\n${monster.name}");
    print(monster.killHero());
    print(monster.move());
  }
}
