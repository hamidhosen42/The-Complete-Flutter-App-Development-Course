void main(List<String> args) {
  int a = 5;
  int b = 7;

  //  Bitwise AND on a and b
  var c = a & b;
  print(c);

  // Bitwise OR on a and b
  var d = a | b;
  print(d);

  // Bitwise XOR on a and b
  var e = a ^ b;
  print(e);

  //  Bitwise NOT on a
  var f = ~a;
  print(f);

  // left shift on a
  var g = a << b;
  print(g);

  //right shift on a
  var h = a >> b;
  print(h);
}