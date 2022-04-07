// ignore_for_file: unused_local_variable

void main(List<String> args) {
  // List
  List<int> myList=[10,20,30,40,50,60,70,80,90,100];
  print(myList.length);
  print(myList);
  print(myList[2]);

  print(myList.first);//first element
  print(myList.last);//last element

  myList.add(20);//add number in list
  print(myList);

  myList.addAll([1,2,3,4,5]);//add al element
  print(myList);

  // insert fixed position
  myList.insert(3, 200);
  print(myList);

  // replace element in list
  myList.replaceRange(2, 3, [500]);
  print(myList);
}