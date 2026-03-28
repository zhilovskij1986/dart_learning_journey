import 'dart:math';

void main() {
  final numbers = List.generate(100, (index) => Random().nextInt(101));
  //print(numbers);
  print('______________________________________________');

  print('65-й елемент: ${numbers[64]}');
  print('______________________________________________');

  numbers[50] = 1000000000;

  final numbersWithOutElement = numbers.removeWhere(
    (item) => [24, 45, 66, 88].contains(item),
  );

  var sum = 0;
  for (var i = 0; i < numbers.length; i++) {
    if (numbers[i] % 3 == 0) {
      sum += numbers[i];
    }
  }
  print('Сума єлементів: $sum');
  print('______________________________________________');

  final temp = [];
  for (final element in numbers) {
    if (element % 2 == 0) {
      temp.add(element);
    }
  }
  print('Довжина temp: ${temp.length}');
}
 
