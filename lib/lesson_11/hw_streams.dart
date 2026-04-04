void main() async {
  final fromIterable = Stream<int>.fromIterable([1, 2, 3, 4, 5]);

  await for (final value in fromIterable) {
    print(value);
  }
  print('_______________________________');
  fromIterable.listen(print);
}
