void main(List<String> args) {
  myFunction("Afran");
  print("");
  myFunction("Afran", 20, 30, 50);
  print("");
  myFunction1("Afran");
  print("");
  myFunction1("Afran", b: 1000);
  print("");
  myFunction1("Afran", b: 10, c: 3, d: 4);
}

// Optional Positional paremeter
myFunction(a, [b = 100, c, d]) {
  print(a);
  print(b);
  print(c);
  print(d);
}

myFunction1(a, {b = 10, c, d}) {
  print(a);
  print(b);
  print(c);
  print(d);
}