void main(List<String> args) {
  // Imperative solution
  const List<int> list = [1, 2, 3, 4];

  /// Imperative solution
  int sumI = 0;
  for (int i = 0; i < list.length; ++i) {
    sumI = sumI + list[i];
  }
  print(sumI);

  /// Functional solution
  final sumF = list.fold<int>(0, (p, c) => p + c);
  print(sumF);
}
