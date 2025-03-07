const pi = 3.14;

void main(List<String> arguments) async {
  var a = RegularClass(number: 10);
  var b = RegularClass(number: 10);
  print(identical(a, b));

  var c = const ConstClass(number: 12);
  var d = const ConstClass(number: 12);
  print(identical(c, d));

  var e = ConstClass(number: 13);
  var f = ConstClass(number: 13);
  print(identical(e, f));

  print(ConstClass.myNumber);
}

class RegularClass {
  final int number; // final is immutable

  RegularClass({required this.number}) {
    const localNumber = 14; // variable must be have value

    print(pi);
    print(number * pi / localNumber);
  }
}

class ConstClass {
  final int number; // final is immutable
  static const myNumber = 7;

  const ConstClass({required this.number});
}
