void main(List<String> args){
  // The this keyword represents an implicit object pointing to current class object. It refers to the current instance of the class in a method or constructor. The this keyword is mainly used to eliminate the ambiguity between class attributes and parameters with the same name.
  var emp = new Employee('EMP001');
}

class Employee {
  String emp_code="";
  Employee(String emp_code) {
    this.emp_code = emp_code;
    print("The Employee Code is : ${emp_code}");
  }
}