void main(List<String> args) {
  int a = 5;
  int b = 7;

  // Using And Operator
  bool c = a > 10 && b < 10;
  print("And Operator=${c}");

  // Using Or Operator
  bool d = a > 10 || b < 10;
  print("Or Operator=${d}");

  // Using Not Operator
  bool e = !(a > 10);
  print("Not Operator=${e}");
}