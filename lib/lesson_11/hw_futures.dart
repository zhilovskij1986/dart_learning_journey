import 'dart:async';

void main() async {
  task_1();
  task_2();
}

void task_1() async {
  final resultName = await fetchName();

  print('Мене звати $resultName');
}

Future<String> fetchName() async {
  await Future<void>.delayed(Duration(seconds: 2));
  return 'Віталій';
}

void task_2() async {
  final resulAge = await fetchAge();
  if (resulAge == '') {
    print('Не заповнено поле вік');
  } else {
    final age = int.parse(resulAge);
    print('Мені $age ${getAgeAddition(age)}');
  }
}

Future<String> fetchAge() async {
  await Future<void>.delayed(Duration(milliseconds: 1500));
  return '10';
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
