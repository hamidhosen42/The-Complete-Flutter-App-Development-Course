// ignore_for_file: unused_local_variable, unnecessary_type_check

void main(List<String> args) {
  // True if the object has the specified type
  int num = 10;
  var check = num is int;
  print(check);

  // False if the object has the specified type

  double num1 = 5.25;
  var res = num1 is! double;
  print(res); 
}
