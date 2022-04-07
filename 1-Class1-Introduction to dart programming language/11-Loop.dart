// ignore_for_file: unused_local_variable

void main(List<String> args) {

  //  for loop
  for(int i=0;i<10;i++)
  {
    print(i);
  }

  // for in
  List myList=[5,6,7,8,9,10];

  for(int i in myList){
    print(i);
  }

  // for each
  List<Map> myList1=[
    {
      "name":"Hamid Hosen"
    },
    {
      "name":"Hamid Hosen Azad"
    }
  ];

  myList1.forEach((element) { 
    print(element);
    print(element["name"]);
  });

  // while loop
  int x=2;
  while(x<=10)
  {
    print(x);
    x++;
  }

  // do while loop
  int y=2;

  do
  {
    print(y);
    y++;
  }while(y<=10);
}