void main(List<String> arguments) async {
  final int numbers; // final is immutable

  numbers = 4;
  print(numbers);
  // numbers = 3; // error => because the variable already has a value
  // print(numbers);
}

class RegularClass {
  final int number; // final is immutable

  RegularClass({required this.number});
}
