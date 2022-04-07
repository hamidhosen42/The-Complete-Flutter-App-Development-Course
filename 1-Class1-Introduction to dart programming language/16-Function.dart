void main(List<String> args) {
  
  // Defining a function
  myFunction(){
    print("Function");
  }
  // Calling function
  myFunction();

  // parameters function and return function
  paraFunction(int a, int b) {
    print(a+b);
  }

  print(paraFunction(10, 5));

  // arrow function
  myArrowFunction()=>{
    print("Errow Function"),
  };

  myArrowFunction();

  //returning function
  paraFunction1(int a,int b){
    return a+b;
  }

  print(paraFunction1(10, 5));
}