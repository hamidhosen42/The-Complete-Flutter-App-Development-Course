// Encapsulation is use to hide a specific property or method only making those properties accessible within the scope of the function
import '20.2-Encapsulation.dart';

void main() {
  MainCake newCake = new MainCake();
  //non-private property -  randomPieceOfCakes
  print(newCake.randomPieceOfCakes);

  //private property - piece of cake
  print(newCake._pieceOfCake1); // private property error

  // non-private private - piece of cake
  print(newCake.pieceOfCake2);
}