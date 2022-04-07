// ignore_for_file: unused_local_variable, unused_label

void main(List<String> args) {
  final area=Area.Dhaka;

  switch(area){
    case Area.Dhaka:
      print(area);
      break;
    case Area.Gazipur:
      print(area);
      break;
    case Area.Kulna:
      print(area);
      break;
    // ignore: dead_code
    defult:
      print("Nothing");
  }
}

enum Area{
  Dhaka,Gazipur,Kulna,
}