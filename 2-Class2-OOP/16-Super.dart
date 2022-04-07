void main() {
  // The super keyword is a reference variable which is used to refer immediate parent class object.
  SubClass obj = new SubClass();
  obj.printMsg();
  obj.display();
}

class SuperClass {
  SuperClass() {
    print("You are inside Parent constructor!!");
  }

  display() {
    print("Parent class method");
  }
}

class SubClass extends SuperClass {
  SubClass() {
    print("You are inside Child constructor!!");
  }

  //Overriding method
  @override
  display() {
    print("Child class method");
  }

  void printMsg() {
    //This would call subclass method
    display();
    //This would call superclass method
    super.display();
  }
}