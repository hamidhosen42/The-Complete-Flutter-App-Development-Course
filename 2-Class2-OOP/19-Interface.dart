// An interface is a completely "abstract class"
void main(List<String> args) {
  MyClass obj=new MyClass();
  obj.myFunction();
  obj.funOne();
  obj.funCTwo();
}
class InterfaceClass {
  funOne() {}
  funCTwo() {}
}

class MyClass implements InterfaceClass{
  myFunction()
  {
    print(10+30);
  }

  @override
  funCTwo() {
    print("Function-1");
  }

  @override
  funOne() {
    print("Function-2");
  }
}