void main() {
  primitives();  
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

