import 'monster.dart';

class MonsterJellyfish extends Monster {
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