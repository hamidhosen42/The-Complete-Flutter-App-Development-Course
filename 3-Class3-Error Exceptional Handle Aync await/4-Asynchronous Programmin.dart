import 'dart:async';

void main(List<String> args)  async{

  // future,async,await
  // method 1

  // method 2

  // method 3

  // method 4

  print("1st");
  print("2nd");
  Timer(Duration(seconds: 5),()=>print("3rd"));
  print("4th");


  // future
  final f1=Future(()=>"Hamid")
  .then((value) => print(value))
  .catchError((e)=>print(e))
  .whenComplete(() => print("Finised"));


  Future.value(2).then((value) => print(value));

  Future.delayed(Duration(seconds: 2),()=>print("Success"));

  // async , await
  await add(12,5);
}

add( a,b) async
{
  print(a+b);
}