import 'dart:async';

void main() async {
  final stopwatch = Stopwatch();
  stopwatch.start();   

  final results = await Future.wait([task_1(), task_2()]);

  stopwatch.stop();
  print('Загальний час виконання: ${stopwatch.elapsedMilliseconds} мс');
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
      print('Мені $age ${getAgeAddition(age)}');
    }
  }
}

Future<String> fetchAge() async {
  await Future<void>.delayed(Duration(milliseconds: 1500));
  return '40';
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
