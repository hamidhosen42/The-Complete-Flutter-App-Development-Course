// The static keyword is used to declare the class variable and method. It generally manages the memory for the global data variable. The static variables and methods are the member of the class instead of an individual instance.
void main(List<String> args) {
  //can be accessed without creating an object.
  print(MyClass.age);
  print(MyClass.addTwoValue(12,14));
}
class MyClass{
  static var age=30;
  static addTwoValue(int a,int b){
    return a+b;
  }
}