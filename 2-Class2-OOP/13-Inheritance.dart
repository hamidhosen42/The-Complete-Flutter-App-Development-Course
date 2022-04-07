
// Inheritance in dart is defined as the process in which one class derive the properties and characteristics of another class. It is helpful as it provides an ability with which we can create a new class from an existing class.
void main(List<String> args) {
  Daughter obj=Daughter();
  print(obj.age);
  obj.myFunction();
  obj.myFunctionTwo();
  obj.myFunctionThree();

  Father obj1=Father();
  print(obj1.age);
  obj1.myFunction();
  obj1.myFunctionTwo();
}

class Father{
  int age=60;
  myFunction()
  {
    print("Function 1");
  }
  myFunctionTwo()
  {
    print("Function 2");
  }
}

// inheritance
class Daughter extends Father{
  myFunctionThree() {
    print("Function 3");
  }
}