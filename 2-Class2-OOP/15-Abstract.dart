void main(List<String> args) {
  var obj = new Daughter();
  obj.myFunction();
  obj.myFunctionTwo();
}

abstract class Father {
  myFunction() {
  }

  myFunctionTwo() {
  }
}

// method overloading
class Daughter extends Father {
  @override
  myFunction() {
    print("Function 1");
  }

  @override
  myFunctionTwo() {
    print("Function 2");
  }
}