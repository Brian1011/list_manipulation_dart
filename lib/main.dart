import 'models/cart.dart';
import 'models/fruit.dart';

main(){
  foldList();
}

// add to list function
addToList(){
  List<int> oddNumbers = [1, 3, 5];
  oddNumbers.add(7);
  print(oddNumbers); // [1, 3, 5, 7]
}

// adds all the elements of evenNumbers list to oddNumbers list.
combineMultipleLists(){
  List<int> oddNumbers = [1, 3, 5];
  List<int> evenNumbers = [2, 4, 6];
  
  List<int> numbers = oddNumbers + evenNumbers;
  print(numbers); // [1, 3, 5, 2, 4, 6]

  List<int> allNumbers = [...oddNumbers, ...evenNumbers];
  print(allNumbers); // [1, 3, 5, 2, 4, 6]

  oddNumbers.addAll(evenNumbers);
  print(oddNumbers); // [1, 3, 5, 2, 4, 6]
}

// insert to list at a position
insertToListAtIndexPosition(){
  List<int> oddNumbers = [1, 3, 5];
  int position = 1;
  oddNumbers.insert(position, 2);
  print(oddNumbers); // [1, 2, 3, 5]
}

// remove specific element list
removeFromList(){
  List<int> oddNumbers = [1, 3, 5];
  oddNumbers.remove(3);
  print(oddNumbers); // [1, 5]
}

// remove element at a position
removeFromListAtPosition(){
  List<int> oddNumbers = [1, 3, 5];
  int position = 1;
  oddNumbers.removeAt(position);
  print(oddNumbers); // [1, 5]
}

// remove last element
removeLastFromList(){
  List<int> oddNumbers = [1, 3, 5];
  oddNumbers.removeLast();
  print(oddNumbers); // [1, 3]
}

// shuffle list elements randomly
shuffleList(){
  List<int> oddNumbers = [1, 5, 3, 7];
  oddNumbers.shuffle();
  print(oddNumbers); // [7, 5, 1, 3]
}

// create new list of numbers from range
getSublistFromList(){
  List<int> oddNumbers = [1, 3, 5, 7];
  List<int> numbers = oddNumbers.sublist(0, 2);
  print(numbers); // [1, 3]
}

// sort list in ascending order
sortNumbersList(){
  List<int> oddNumbers = [1, 5, 3, 7];
  oddNumbers.sort();
  print(oddNumbers); // [1, 3, 5, 7]
}

// sort list in descending order
sortNumbersListDesc(){
  List<int> oddNumbers = [1, 5, 3, 7];
  oddNumbers.sort((a, b) => b.compareTo(a));
  print(oddNumbers); // [7, 5, 3, 1]
}

// sort list of objects by property
sortFruitsList(){
  List<Fruit> fruits = [
    Fruit(id: 1, name: 'banana', color: 'yellow'),
    Fruit(id: 2, name: 'apple', color: 'red'),
    Fruit(id: 3, name: 'orange', color: 'orange'),
  ];

  fruits.sort((a, b) => a.name.compareTo(b.name));
  print("Sort by name ascending order: $fruits");
  // Sort by name ascending order: [Fruit{id: 2, name: apple, color: red}, Fruit{id: 1, name: banana, color: yellow}, Fruit{id: 3, name: orange, color: orange}]

  fruits.sort((a, b) => a.id.compareTo(b.id));
  print("Sort by id ascending order: $fruits");
  // Sort by id ascending order: [Fruit{id: 1, name: banana, color: yellow}, Fruit{id: 2, name: apple, color: red}, Fruit{id: 3, name: orange, color: orange}]

  fruits.sort((a, b) => b.id.compareTo(a.id));
  print("Sort by id descending order: $fruits");
  // Sort by id descending order: [Fruit{id: 3, name: orange, color: orange}, Fruit{id: 2, name: apple, color: red}, Fruit{id: 1, name: banana, color: yellow}]
}

// map keyword applies a function to each element in the list and returns a new list with the results.
mapList(){
  List<int> oddNumbers = [1, 3, 5];
  List<int> evenNumbers = oddNumbers.map((number) => number * 2).toList();
  print(evenNumbers); // [2, 6, 10]

  List<Fruit> fruits = [
    Fruit(id: 1, name: 'banana', color: 'yellow'),
    Fruit(id: 2, name: 'apple', color: 'red'),
    Fruit(id: 3, name: 'orange', color: 'orange'),
  ];

  List<String> fruitNames = fruits.map((fruit) => fruit.name).toList();
  print(fruitNames); // [banana, apple, orange]
}

// Returns the first element that satisfies the given predicate function.
findFirstElement(){
  List<int> oddNumbers = [1, 3, 5];
  int firstOddNumber = oddNumbers.firstWhere((number) => number > 2);
  print(firstOddNumber); // 3

  List<Fruit> fruits = [
    Fruit(id: 1, name: 'banana', color: 'yellow'),
    Fruit(id: 2, name: 'apple', color: 'red'),
    Fruit(id: 3, name: 'orange', color: 'orange'),

  ];

  bool isFruitApple(Fruit fruit){
    return fruit.name == 'apple';
  }
  late Fruit fruit;
  fruit = fruits.firstWhere(isFruitApple);
  print(fruit); // Fruit{id: 2, name: apple, color: red}

  fruit = fruits.firstWhere((fruit) => fruit.name == 'apple');
  print(fruit); // Fruit{id: 2, name: apple, color: red}
}

// Return list of elements that satisfy the given predicate function.
findElements(){
  List<int> oddNumbers = [1, 3, 5];
  List<int> oddNumbersGreaterThan2 = oddNumbers.where((number) => number > 2).toList();
  print(oddNumbersGreaterThan2); // [3, 5]

  List<Fruit> fruits = [
    Fruit(id: 1, name: 'banana', color: 'yellow'),
    Fruit(id: 2, name: 'apple', color: 'red'),
    Fruit(id: 3, name: 'orange', color: 'orange'),
    Fruit(id: 4, name: 'peach', color: 'orange'),
  ];

  bool isColorOrange(Fruit fruit){
    return fruit.color == 'orange';
  }

  List<Fruit> fruitsWithColorOrange = [];

  fruitsWithColorOrange = fruits.where(isColorOrange).toList();
  print(fruitsWithColorOrange); // [Fruit{id: 3, name: orange, color: orange}, Fruit{id: 4, name: peach, color: orange}]

  fruitsWithColorOrange = fruits.where((fruit) => fruit.color == 'orange').toList();
  print(fruitsWithColorOrange); // [Fruit{id: 3, name: orange, color: orange}, Fruit{id: 4, name: peach, color: orange}]
}

// forEach keyword applies a function to each element in the list.
forEachList(){
  List<int> oddNumbers = [1, 3, 5];
  oddNumbers.forEach((number) => print(number)); // 1 3 5

  List<Fruit> fruits = [
    Fruit(id: 1, name: 'banana', color: 'yellow'),
    Fruit(id: 2, name: 'apple', color: 'red'),
    Fruit(id: 3, name: 'orange', color: 'orange'),
  ];

  fruits.forEach((fruit) {
    print(fruit.name.toUpperCase());
  });

  // BANANA APPLE ORANGE
}

// fold keyword applies a function to each element in the list and returns a single value.
foldList(){
  int initialValue = 0;
  List<int> oddNumbers = [1, 3, 5];
  int sum = oddNumbers.fold(initialValue, (previousValue, element) => previousValue + element);
  print(sum); // 9

  List<Fruit> fruits = [
    Fruit(id: 1, name: 'banana', color: 'yellow'),
    Fruit(id: 2, name: 'apple', color: 'red'),
    Fruit(id: 3, name: 'orange', color: 'orange'),
  ];

  String fruitNames = fruits.fold('', (previousValue, element) => previousValue + element.name + ', ');
  print(fruitNames); // banana, apple, orange,
  
  List<Cart> cartItems = [
    Cart(id: 1, title: 'banana', quantity: 3, unitPrice: 10),
    Cart(id: 2, title: 'apple', quantity: 2, unitPrice: 20),
    Cart(id: 3, title: 'orange', quantity: 5, unitPrice: 30),
  ];

  double total = cartItems.fold(0.0, (previousValue, element) => previousValue + (element.quantity * element.unitPrice));
  print(total); // 220.0
}