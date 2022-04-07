import '5-Object.dart';
//  Constructor is called automatically when an object is instantiated; it is mainly used to set initial values for instance variables.
void main(List<String> args) {
  var obj1=new MyClass.constructor1(10);
  var  obj=MyClass(2,3);
}
class MyClass
{
  MyClass.constructor1(a){
     print('This is the parameterized constructor with only one parameter');
  }
  MyClass(int a,int b)
  {
    print(a+b);
    print("Hamid");
  }
}