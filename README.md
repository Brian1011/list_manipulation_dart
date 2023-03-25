[[Dart flutter image]]

# List Manipulation Functions in Dart
This repository contains sample code demonstrating how to manipulate lists in Dart. 

## Introduction
All code examples are available in the `main.dart` file.

All code has been tested on Dart 2.19.2

Run code using the following command:
```dart main.dart```

## Table of Contents
The following functions are covered:

- `add`: adds an element to the end of a list
- `addAll`: adds multiple elements to the end of a list
- `insert`: inserts an element at a specific index in a list
- `remove`: removes the first occurrence of an element from a list
- `removeAt`: removes an element at a specific index in a list
- `removeLast`: removes the last element from a list
- `removeRange`: removes a range of elements from a list
- `clear` : removes all elements from a list
- `remove` : Removes the first occurrence of a specified element from the list.
- `insert` : Inserts an element at a specified position in the list.
- `sort` : Sorts the elements in the list.
- `shuffle` : Randomly shuffles the elements in the list.
- `sublist` : Returns a new list containing a specified range of elements from an existing list.
- `map`: Applies a function to each element in the list and returns a new list with the results. 
- `where` : Returns a new list containing only the elements that satisfy a specified condition.
- `forEach` : Executes a function for each element in the list.
  fold(): Accumulates a single value by applying a function to each element in the list.
  reduce(): Reduces the list to a single value by applying a function to each element.
  any(): Checks if at least one element in the list satisfies a specified condition.
  every(): Checks if all elements in the list satisfy a specified condition.

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