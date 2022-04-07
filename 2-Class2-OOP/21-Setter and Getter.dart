// Getters and setters are special class methods that is used to initialize and retrieve the values of class fields respectively. The setter method is used to set or initialize respective class fields, while the getter method is used to retrieve respective class fields

void main(List<String> args) {
  SetterGetter obj=new SetterGetter();
  obj.setName="Hamid Hosen";
  print(obj.getName);
}

class SetterGetter {
  String? name;

  set setName(String name) {
    this.name=name;
  }

  get getName {
    return name;
  }
}