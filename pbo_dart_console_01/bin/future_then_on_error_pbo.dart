import 'dart:async';
import 'dart:math';

Future<void> main(List<String> arguments) async {
  print('Previous statement(s)');

  // Future<void> can using unawaited and ignore
  //unawaited(futureTask(isSuccess: false)); // => to emphasize unawaited
  //futureTask(isSuccess: false).ignore(); // => to ignore if an error occurs

  print('--------------------------------');
  // Future<void> can't using unawaited and ignore
  int number = await futureValue();
  print('Generate number : $number');

  futureValue(isSuccess: false).then((value) {
    print('Generate number1: $value');
  }).onError((error, stackTrace) {
    print(error);
  });

  print('Next statement(s)');
}

Future<void> futureTask({bool isSuccess = true}) async {
  print('[ok] Task started');
  await Future.delayed(Duration(seconds: 3));
  if (!isSuccess) {
    throw Exception('Task failed');
  }
  print('[ok] Tas completed');
}

Future<int> futureValue({bool isSuccess = true}) async {
  print('Starting generating value');
  if (isSuccess == false) {
    throw Exception('Value generation failed');
  }
  print('Value generated');
  return Random().nextInt(100);
}
