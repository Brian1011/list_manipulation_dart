[[Dart flutter image]]

# List Manipulation Functions in Dart
This repository contains sample code demonstrating how to manipulate lists in Dart. 
The following functions are covered:

- `add`: adds an element to the end of a list
- `addAll`: adds multiple elements to the end of a list
- `insert`: inserts an element at a specific index in a list
- `remove`: removes the first occurrence of an element from a list
- `removeAt`: removes an element at a specific index in a list
- `removeLast`: removes the last element from a list
- `removeRange`: removes a range of elements from a list
- `clear` : removes all elements from a list

This repository contains sample code demonstrating various list manipulation functions in Dart. 
Below is a list of the functions covered, along with a brief explanation of what each function does and a code example.

## Functions

1. `add()`
The add function adds an element to the end of a list.

```dart
  List<int> oddNumbers = [1, 3, 5];
  oddNumbers.add(7);
  print(oddNumbers); // [1, 3, 5, 7]
```