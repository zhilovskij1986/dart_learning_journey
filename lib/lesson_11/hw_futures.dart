void main() async {
  final result = await fetchName();

  print('Мене звати $result');
}

Future<String> fetchName() async {
  await Future<void>.delayed(Duration(seconds: 2));
  return 'Віталій';
}
