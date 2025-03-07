import 'drink_ability_mixin.dart';
import 'monster.dart';

class MonsterJellyfish extends Monster with DrinkAbilityMixin {
  String swim() => "Wish.. wish";

  @override
  String killHero() {
    return "Creamy fresh";
  }

  @override
  String move() {
    return "swim-swim";
  }
}