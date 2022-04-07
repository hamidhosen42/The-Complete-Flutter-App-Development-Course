void main(List<String> args) {

  // try, on, catch, stack trace, finally
  print("Start");
  try {
    // int result = int.parse("5rem");
    // print(result);
    // print(result.runtimeType);

    var result=10~/0;
    print(result);
  }on IntegerDivisionByZeroException
  {
    print("Cannot divide the zero");
  }
  catch (e,s) 
  {
    print(e);
    print(s);
  }
  finally
  {
    print("Excted alwayes");
  }
}