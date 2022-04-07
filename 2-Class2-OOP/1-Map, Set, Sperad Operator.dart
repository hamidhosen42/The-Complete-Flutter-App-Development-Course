// ignore_for_file: equal_keys_in_map

void main(List<String> args) {

  // Map
  bool value = true;
  print(value);

  Map weekDays = {'Day1': 'Mon', 'Day2': 'Tue', 'Day3': 'Wed', 'Day4': 'Thu'};
  print(weekDays); 
  print(weekDays.keys);//Returns an iterable object representing all keys in respective map object
  print(weekDays.values);//Returns an iterable object representing all values in respective map object
  print(weekDays.length);//Returns the size of the Map
  print(weekDays.isEmpty);//	Returns true if the Map is an empty Map
  print(weekDays.isNotEmpty);//Returns true if the Map has at least one item.

  // Set
  Set mySet = {'A', 'B', 'C', 'D', for (int i = 0; i < 10; i++) {'E$i'}};
  mySet.add('F');
  print(mySet);

  // Spred operator
  Set a={1,2,3};
  List b=[...a,4,5,6,7];
  print(b);

  List<int> l1 = [1, 2, 3];
  List<int> l2 = [4, 5];
  List<int> result = [...l1, ...l2];
  print(result);
}
