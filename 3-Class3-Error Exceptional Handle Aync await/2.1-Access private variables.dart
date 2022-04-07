import '2.2-Access private variables.dart';

void main(List<String> args) 
{
  var obj=Student();
  obj.setAge=23;
  print(obj.getAge);

  obj.setName="Hamid";
  print(obj.getName);
}

// class Student
// {
//   String _name="Hamid";
//   int _age=23;
// }