class Character {
  String? _name;
  late int? _healthPoint;

  String get name => _name ?? 'Anonymous';

  set name(String value) {
    _name = value;
  }

  int get healthPoint => _healthPoint!;

  set healthPoint(int value) {
    if(value < 5) {
      value = 5;
    }
    _healthPoint = value;
  }
}