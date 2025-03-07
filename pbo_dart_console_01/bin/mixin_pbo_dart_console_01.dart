import 'package:pbo_dart_console_01/mixin/fly_monster.dart';
import 'package:pbo_dart_console_01/mixin/monster.dart';
import 'package:pbo_dart_console_01/mixin/monster_crab.dart';
import 'package:pbo_dart_console_01/mixin/monster_crab_jellyfish.dart';
import 'package:pbo_dart_console_01/mixin/monster_jellyfish.dart';
import 'package:pbo_dart_console_01/mixin/drink_ability_mixin.dart';

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
    if (monster is MonsterCrabJellyfish) {
      monster.name = "Crab Jellyfish";
    }
    print("\nName: ${monster.name}");
    print("Ability1: ${monster.killHero()}");
    print("Ability2: ${monster.move()}");
    print("Ability3: ${(monster as DrinkAbilityMixin).drink()}");

    if (monster is FlyMonster) {
      print("Other ability: ${(monster as FlyMonster).fly()}");
    }
  }
}
