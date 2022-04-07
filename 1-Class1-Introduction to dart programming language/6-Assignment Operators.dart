void main(List<String> args) {
  int a = 5;
  int b = 7;

  // Simple Assignment
  a = b;
  print(a);

  // Assign the value only if the variable is null
  var d;
  d ??= a + b;
  print(d);

  // Add and Assignment
  a+=b;
  print("Add and Assignment=${a}");

  // Subtract and Assignment
  a-=b;
  print("Subtract and Assignment=${a}");

  // Multiply and Assignment
  a*=b;
  print("Multiply and Assignment=${a}");

  // Divide and Assignment
  a~/=b;
  print("Divide and Assignment=${a}");
  
}