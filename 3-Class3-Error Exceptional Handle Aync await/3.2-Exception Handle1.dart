void main(List<String> args) {
  myValue(3);
}

class Value implements Exception {
  String leesThenFour() {
    return "value can't be less then four";
  }

  String moreTenTen() {
    return "value must be 5 to 10";
  }
}

myValue(int v) {
  if (v < 4) {
    throw Value().leesThenFour();
  } else if (v > 10) {
    throw Value().moreTenTen();
  } else {
    print("Successfll");
  }
}
