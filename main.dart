main(){
  sortNumbersList();
}

// add to list function
addToList(){
  List<int> oddNumbers = [1, 3, 5];
  oddNumbers.add(7);
  print(oddNumbers); // [1, 3, 5, 7]
}

// adds all the elements of evenNumbers list to oddNumbers list.
addAllToList(){
  List<int> oddNumbers = [1, 3, 5];
  List<int> evenNumbers = [2, 4, 6];

  oddNumbers.addAll(evenNumbers);
  print(oddNumbers); // [1, 3, 5, 2, 4, 6]
}

// insert to list at a position
insertToList(){
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

// sort list
sortNumbersList(){
  List<int> oddNumbers = [1, 5, 3, 7];
  oddNumbers.sort();
  print(oddNumbers); // [1, 3, 5, 7]
}