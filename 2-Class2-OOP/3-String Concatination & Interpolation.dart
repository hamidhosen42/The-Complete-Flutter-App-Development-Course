void main(List<String> args) {

  // String Concatenation
  String a='We';
  String b='Are';
  String c="Learning";
  String d="Dart";

  // String literals
  String e='We' 'Are' 'Learning' 'Dart';

  // 1st step
  print('$a $b $c $d');

  // 2nd step
  print(a+ b + c + d);

  // 3rd step
  print(e);

  // 4th step
  List<String> f=['We','Are','Learning','Flutter'];
  print(f.join(" "));

  // String Interpolation
  var greeting = "Hello";
  var person = "Hamid";

  print("${greeting}, ${person}!");
}