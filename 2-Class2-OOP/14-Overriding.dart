// // Inheritance in dart is defined as the process in which one class derive the properties and characteristics of another class. It is helpful as it provides an ability with which we can create a new class from an existing class.
// void main(List<String> args) {
//   Daughter obj = Daughter();
//   print(obj.age);
//   obj.myFunction();

//   Father obj1 = Father();
//   print(obj1.age);
//   obj1.myFunction();
// }

// class Father {
//   int age = 60;
//   //Overridden method
//   myFunction() {
//     print("Function 1");
//   }
// }

// // inheritance
// class Daughter extends Father {
//   //Overriding method

// @override
//   myFunction() {
//     print("Overriding method");
//   }
// }

// ignore_for_file: unused_local_variable

void main(List<String> args) {
  var list = [29, 76, 12, 32];
  list.sort((a, b) => a.compareTo(b));
  print(list);
}