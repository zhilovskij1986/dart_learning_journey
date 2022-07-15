void main() {
  primitives();  
  collections();
  varFinalConst();
}

/// Створи змінні та виведи їх:

/// Завдання 1: Примітивні типи

void primitives() {
  int age = 40;
  double height = 1.76;
  String name = 'Віталій';
  bool isStudent = false;
  late String myStatus;

  if (isStudent) {
    myStatus = 'студент';
  } else {
    myStatus = 'працюю';
  }

  print('Мене звати $name , мені $age років, мій зріст $height, і я $myStatus');
  print('______________________________________');
}

/// Завдання 2: Колекції
/// 1. List — 3 твої улюблені кольори
/// 2. Set — 3 унікальні оцінки, спробуй створити перевір print-ми, що вони не виводяться
/// 3. Map — 3 предмети та їх оцінки
void collections() {
  List<String> favoriteColors = ['blue', 'white', 'orange'];
  Set<int> grades = {10, 11, 12, 10, 11};
  Map<String, int> gradesSubjects = {
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
/// 1. Створи змінну через var — наприклад, місто проживання та зміни її декілька разів (print після кожної зміни)
/// 2. Створи змінну через final — наприклад, країна
/// 3. Створи змінну через const — наприклад, кількість днів у тижні
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
