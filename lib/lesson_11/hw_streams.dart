import 'dart:async';

void main() async {
  streamListen();

  streamPeriodic();

  streamController();
}

void streamListen() async {
  final fromIterable = Stream<int>.fromIterable([1, 2, 3, 4, 5]);

  await for (final value in fromIterable) {
    print(value);
  }
  print('_______________________________');
  fromIterable.listen(print);
}

void streamPeriodic() {
  Stream<int>.periodic(
    const Duration(seconds: 1),
    (i) => i + 1,
  ).take(10).listen((number) {
    print('$number...');
  });
}

void streamController() async {
  final controller = StreamController<String>();

  controller.stream.listen((data) {
    print('Отримано: $data');
  }, 
  onDone: () => print('Стрім завершено')
  );

  controller.add('Hello');
  controller.add('World');
  controller.add('Dart');

  await controller.close();
}
