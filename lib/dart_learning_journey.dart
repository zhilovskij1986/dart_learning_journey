void main() {
  final range = GitUser().calculate();
  print('user for $range days');
}

class GitUser {
  int calculate() {
    return 6 * 7;
  }
}
