void main() {
  primitives();
  collections();
  varFinalConst();
  record();
  nullable();
}

/// Створи змінні та виведи їх:

/// Завдання 1: Примітивні типи

void primitives() {
  final age = 40;
  final height = 1.76;
  final name = 'Віталій'; 

 final isStudent = DateTime.now().year > 2020; 

  final myStatus = isStudent ? 'студент' : 'працюю';

  print('Мене звати $name , мені $age років, мій зріст $height, і я $myStatus');
  print('______________________________________');
}

/// Завдання 2: Колекції

void collections() {
  final favoriteColors = ['blue', 'white', 'orange'];
  final grades = {10, 11, 12};
  final gradesSubjects = {
    'Mathematics': 10,
    'English': 11,
    'Computer_science': 12,
  };

  print('улюблені кольори: ${favoriteColors.join(", ")}');
  print('унікальні оцінки ${grades.join(", ")}');
  print('Предмети: ${gradesSubjects.keys} оцінки: ${gradesSubjects.values}');
  print('______________________________________');
}

/// Завдання 3: var, final, const

void varFinalConst() {
  var city = 'Vinnitsa';
  print(city);
  city = 'Kyiv';
  print(city);
  city = 'Lviv';
  print(city);
  print('______________________________________');

  final country = 'Ukraine';
  print(country);
  print('______________________________________');

  const numberDayWeak = 7;
  print(numberDayWeak);
  print('______________________________________');
}

/// Завдання 4: Record

void record() {
  final myNameAge = ('Vitaliy', 40);
  print("Ім'я: ${myNameAge.$1}");
  print('Вік: ${myNameAge.$2}');
  print('______________________________________');

  final myNameAgeParam = (name: 'Vitaliy', age: 40);
  print("Ім'я: ${myNameAgeParam.name}");
  print('Вік: ${myNameAgeParam.age}');
  print('______________________________________');
}
/// Завдання 5: Nullable (опціонально)
/// Створи змінну String? nickname — може бути null або ім'я.
/// Виведи її через ??: якщо null — виведи "Немає", інакше — значення.
void nullable() {
  String? nickname;
  print(nickname ?? "Відсутнє ім'я");
}
