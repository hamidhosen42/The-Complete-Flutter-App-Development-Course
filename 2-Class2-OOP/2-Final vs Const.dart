void main(List<String> args) {
  // var
  var a = 10;
  a = 15;
  print(a);

  // final
  // The constant declared with const keyword are implicitly final.
  var b = 5;
  final c = b;
  // c=10;
  print(c);

  final min = 1;
  final max = 18;
  print(min);
  print(max);

  // const
  //  A final variable can be set only once while const keyword represents a compile-time constant.
  const pi = 3.14;
  print(pi); 

  var d = 10;
  const result = d;
  print(result);
}
