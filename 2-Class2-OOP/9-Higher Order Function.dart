void main(List<String> args) {
  mainFunction()();
  add(){
    print(4+5);
  }
  mainFunction1(add);
}

mainFunction()
{
  return()=>print("Bangladesh");
}
mainFunction1(Function function){
  function();
}