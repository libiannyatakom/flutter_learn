import 'character.dart';

abstract class Monster extends Character {
  String killHero() => "Grr.. Delicious.. Yummy..";

  String move();
}