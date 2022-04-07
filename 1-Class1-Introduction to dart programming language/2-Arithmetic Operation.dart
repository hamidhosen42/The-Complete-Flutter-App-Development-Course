// ignore_for_file: unused_local_variable

void main(List<String> args) {
  var num1 = 10;
  var num2 = 7;

  // Add
  var add = num1 + num2;
  print("Add=${add}");

  // Subtract
  var sub = num1 - num2;
  print("Subtract=${sub}");

  // Multiply
  var mul = num1 * num2;
  print("Multiply=${mul}");

  // Divide
  var div = num1 / num2;
  print("Divided=${div}");

  // Divide, returning an integer result
  var divide_integer = num1 ~/ num2;
  print("Divide, returning an integer result=${divide_integer}");

  // Get the remainder of an integer division
  var remainder=num1%num2;
  print("Remainder=${remainder}");

  // Increment
  var increment=num1++;
  print("Increment=${increment}");

  // Decrement
  var decrement=num1--;
  print("Decrement=${decrement}");
}
