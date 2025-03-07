import 'fly_monster.dart';
import 'drink_ability_mixin.dart';
import 'monster.dart';

class MonsterCrab extends Monster with DrinkAbilityMixin implements FlyMonster {
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