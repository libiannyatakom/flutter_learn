void main(List<String> arguments) {
  Hero a, b;
  a = Hero(10);
  b = Hero(21);

  print('a = ${a.power}');
  print('b = ${b.power}');
  print('Hero a + Hero b = ${(a + b).power}');
  print('Hero a + other = ${(a + 21).power}');
  print('Hero a - Hero b = ${(a - b).power}');
  print('Hero a - other = ${(a - 21).power}');
  print('Hero a == Hero b = ${a == b}');
  print('Hero a > Hero b = ${(a > b)}');
  print('Hero b > Hero a = ${(b > a)}');
  print('Hero a >= Hero b = ${(a >= b)}');
  print('Hero b >= Hero a = ${(b >= a)}');
}

class Hero {
  final int power;

  Hero(this.power);

  Hero operator +(var other) {
    if (other is Hero) {
      return Hero(power + other.power);
    } else if (other is int) {
      return Hero(power + other);
    } else {
      return this;
    }
  }

  Hero operator -(var other) {
    if (other is Hero) {
      return Hero(power - other.power);
    } else if (other is int) {
      return Hero(power - other);
    } else {
      return this;
    }
  }

  @override
  bool operator ==(var other) {
    if (other is Hero) {
      return power == other.power;
    }

    return false;
  }

  bool operator >(var other) {
    if(other is Hero) {
      return power > other.power;
    }
    return false;
  }

  bool operator >=(var other) {
    if(other is Hero) {
      return power >= other.power;
    }
    return false;
  }
}
