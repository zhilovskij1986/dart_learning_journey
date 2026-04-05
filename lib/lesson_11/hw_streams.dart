void main() async {
  streamListen();

  streamPeriodic();
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
  Stream<int>.periodic(const Duration(seconds: 1), (i) => i + 1)
      .take(10)
      .listen((number) {
        print('$number...');
      });
}
