import 'dart:async';

void main() async { 
  await Future.wait([
  task_1(),
  task_2(), 
  task_3(),
  ]);  
  
  await task_4();
}

Future<void> task_1() async {
  final resultName = await fetchName();

  print('Мене звати $resultName');
}

Future<String> fetchName() async {
  await Future<void>.delayed(Duration(seconds: 2));
  return 'Віталій';
}

Future<void> task_2() async {
  final resulAge = await fetchAge();
  if (resulAge.isEmpty) {
    print('Не заповнено поле вік');
  } else {
    final age = int.tryParse(resulAge);
    if (age == null) {
      print('Введено не коректне число');
    } else {
      print('Мені $age ${getAgeAdditionBySwitch(age)}');
    }
  }
}

Future<String> fetchAge() async {
  await Future<void>.delayed(Duration(milliseconds: 1500));
  return '2';
}

String getAgeAddition(int age) {
  if (age % 100 >= 11 && age % 100 <= 14) {
    return 'років';
  } else if (age % 10 == 1) {
    return 'рік';
  } else if (age % 10 >= 2 && age % 10 <= 4) {
    return 'роки';
  } else {
    return 'років';
  }
}

String getAgeAdditionBySwitch(int age) {
  switch (age) {
    case _ when (age % 100 >= 11 && age % 100 <= 14):
      return 'років';
    case _ when (age % 10 == 1):
      return 'рік';
    case _ when (age % 10 >= 2 && age % 10 <= 4):
      return 'роки';
    default:
      return 'років';
  }
}

Future<void> task_3() async {final stopwatch = Stopwatch();
  stopwatch.start();

  final results = await Future.wait([task_1(), task_2()]);

  stopwatch.stop();
  print('Загальний час виконання: ${stopwatch.elapsedMilliseconds} мс');  
  }

Future<void> task_4() async {
  final result = await delayedCountdown(3);

  print(result);
}

Future<String> delayedCountdown(int seconds) async {
  for (var i = seconds; i > 0; i--) {
    print('$i...');
    await Future<void>.delayed(Duration(seconds: 1));
  }
  return 'Старт!';
}
