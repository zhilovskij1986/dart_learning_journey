import 'package:dart_learning_journey/lesson_07/homework/names_deepseek.dart';
import 'package:dart_learning_journey/lesson_07/homework/names_gpt.dart';

void main(){
final setDeepseek = ukrainianNamesDeepseek.toSet();

final setGpt = ukrainianNamesGPT.toSet();

final commonNames = setDeepseek.intersection(setGpt);
print('Кількість спільних елементів: ${commonNames.length}');


final differentNamesGpt = setGpt.difference(setDeepseek);
print('Імена, що лише в  setGpt: $differentNamesGpt');

final differentNamesDeepseek = setDeepseek.difference(setGpt);
print('Імена, що лише в  setDeepseek: $differentNamesDeepseek');

}
