import 'package:mocky/mocky.dart';

void main() {
  final randomNouns = Mocky.words(100);

  final nounsMap = <String, int>{};

  for (final word in randomNouns) {
    nounsMap[word] = word.length;
  }
 // print(nounsMap);

  final nounsMapFiltered = <String, int>{};

  for (final evenLength in nounsMap.entries) {
    if (evenLength.value % 2 == 0) {
      nounsMapFiltered[evenLength.key] = evenLength.value;
    }
  }
  print(nounsMapFiltered.keys);
}
 
