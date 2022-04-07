void main(List<String> args) {
  // Dart is an object oriented programming language. Everything in Dart is associated with classes and objects, along with its attributes and methods. A Class is like a blueprint for creating objects. An object is an variable (or instance) of a class; objects have the behaviors of their class. An object has a state and behavior associated with it. The state of an object is stored in fields (variables), while methods (functions) represents the object’s behavior. An object is created from a template known as class.

  // Let’s create an object
  var emp = new Employee();
  emp.empName = "Hamid Hosen";
  emp.empAge = 30;
  emp.empSalary = 45000;
  emp.showEmpInfo();
}


class Employee {
  var empName;
  var empAge;
  var empSalary;

  showEmpInfo() {
    print("Employee Name Is : ${empName}");
    print("Employee Age Is : ${empAge}");
    print("Employee Salary Is : ${empSalary}");
  }
}