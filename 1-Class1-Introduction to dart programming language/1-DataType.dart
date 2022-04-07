// ignore_for_file: unused_local_variable

void main(List<String> args) {
  // number
  int num=10;
  double num2=10.0034;

  print(num);
  print(num2);

  print(num.runtimeType);
  print(num2.runtimeType);

  // string
  String name="Hamid Hosen";
  print(name);

  // bool
  bool value=true;
  print(value);

  // list
  List<int> myList=[1,2,3,4,5,6,7,8,9,10];
  print(myList);

  // map
  List<Map> myMap=[
    {
      "name":"Hamid Hosen",
    },
    {
      "name":"Hamid Hosen Azad"
    },
    {
      "name":"Hamid"
    },
  ];

  print(myMap);
}