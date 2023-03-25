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
- `insert`: inserts an element at a specific index in a list
- `addAll`: adds multiple elements to the end of a list
- `remove`: removes the first occurrence of an element from a list
- `removeAt`: removes an element at a specific index in a list
- `removeLast`: removes the last element from a list
- `removeRange`: removes a range of elements from a list
- `clear`: removes all elements from a list
- `shuffle`: Randomly shuffles the elements in the list.
- `sublist`: Returns a new list containing a specified range of elements from an existing list.
- `sort`: Sorts the elements in the list.
- `map`: Applies a function to each element in the list and returns a new list with the results. 
- `firstWhere`: Returns the first element that satisfies a specified condition.
- `lastWhere`: Returns the last element that satisfies a specified condition.
- `where`: Returns a new list containing only the elements that satisfy a specified condition.
- `forEach`: Executes a function for each element in the list.
- `fold`: Accumulates a single value by applying a function to each element in the list.
- `reduce`: Reduces the list to a single value by applying a function to each element.
- `any`: Checks if at least one element in the list satisfies a specified condition.
- `every`: Checks if all elements in the list satisfy a specified condition.
- `expand`: Expand keyword applies a function to each element in the list and returns a new list with the results.

This repository contains sample code demonstrating various list manipulation functions in Dart. 
Below is a list of the functions covered, along with a brief explanation of what each function does and a code example.

## Functions

### 1. Add
The add function adds an element to the end of a list.

```dart
    List<int> oddNumbers = [1, 3, 5];
    oddNumbers.add(7);
    print(oddNumbers); // [1, 3, 5, 7]
```

### 2. Insert
The insert function inserts an element at a specific index in a list.

```dart
    List<int> oddNumbers = [1, 3, 5];
    int position = 1;
    oddNumbers.insert(position, 2);
    print(oddNumbers); // [1, 2, 3, 5] 2, 3, 5]
```

### 3. AddAll
The addAll function adds multiple elements to the end of a list. You can achieve the same results using other alternatives as shown below.

```dart
    List<int> oddNumbers = [1, 3, 5];
    List<int> evenNumbers = [2, 4, 6];
    
    // add all keyword
    oddNumbers.addAll(evenNumbers);
    print(oddNumbers); // [1, 3, 5, 2, 4, 6]
    
    // alternative method using + operator
    List<int> numbers = oddNumbers + evenNumbers;
    print(numbers); // [1, 3, 5, 2, 4, 6]
    
    // alternative method using spread operator
    List<int> allNumbers = [...oddNumbers, ...evenNumbers];
    print(allNumbers); // [1, 3, 5, 2, 4, 6]
```

### 4. Remove
The remove function removes the first occurrence of an element from a list.

```dart
    List<int> oddNumbers = [1, 3, 5];
    oddNumbers.remove(3);
    print(oddNumbers); // [1, 5]
```

### 5. RemoveAt
The removeAt function removes an element at a specific index in a list.

```dart
    List<int> oddNumbers = [1, 3, 5];
    int position = 1;
    oddNumbers.removeAt(position);
    print(oddNumbers); // [1, 5]
```

### 6. RemoveLast
The removeLast function removes the last element from a list.

```dart
    List<int> oddNumbers = [1, 3, 5];
    oddNumbers.removeLast();
    print(oddNumbers); // [1, 3]
```

### 7. RemoveRange
The removeRange function removes a range of elements from a list.

```dart
    List<int> oddNumbers = [1, 3, 5, 7];
    int start = 0;
    int end = 1;
    oddNumbers.removeRange(start, end);
    print(oddNumbers); // [5, 7]
```

### 8. Clear
The clear function removes all elements from a list.

```dart
   List<int> oddNumbers = [1, 3, 5];
    oddNumbers.clear();
    print(oddNumbers); // []
    
    // an alternative is to assign an empty list to the variable
    oddNumbers = [];
    print(oddNumbers); // []
```

### 9. Shuffle
The shuffle function randomly shuffles the elements in the list.

```dart
    List<int> oddNumbers = [1, 3, 5];
    oddNumbers.shuffle();
    print(oddNumbers); // [5, 1, 3]
```

### 10. Sublist
The sublist function returns a new list containing a specified range of elements from an existing list.

```dart
    List<int> oddNumbers = [1, 3, 5, 7];
    int start = 1;
    int end = 3;
    List<int> subList = oddNumbers.sublist(start, end);
    print(subList); // [3, 5]
```

### 11. Sort
The sort function sorts the elements in the list. You can apply sorting in ascending or descending order. You can also sort list of objects based on their properties.

```dart
    List<int> oddNumbers = [1, 5, 3, 7];
    oddNumbers.sort();
    print(oddNumbers); // [1, 3, 5, 7]
    
    // sort in descending order
    oddNumbers.sort((a, b) => b.compareTo(a));
    print(oddNumbers); // [7, 5, 3, 1]

    // sort list of objects based on their properties
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
```

### 12. Map
The map function applies a function to each element in the list and returns a new list with the results.

```dart
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
```

### 13. FirstWhere
The firstWhere function returns the first element in the list that matches a given condition. You can apply it to list of objects as shown in the example below.

```dart
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
    Fruit fruit;
    fruit = fruits.firstWhere(isFruitApple);
    print(fruit); // Fruit{id: 2, name: apple, color: red}
    
    fruit = fruits.firstWhere((fruit) => fruit.name == 'apple');
    print(fruit); // Fruit{id: 2, name: apple, color: red}
```

### 14. LastWhere
The lastWhere function returns the last element in the list that matches a given condition. You can apply it to list of objects as shown in the example below.

```dart
    List<int> oddNumbers = [1, 3, 5];
    int lastOddNumber = oddNumbers.lastWhere((number) => number > 2);
    print(lastOddNumber); // 5
    
    List<Fruit> fruits = [
      Fruit(id: 1, name: 'banana', color: 'yellow'),
      Fruit(id: 2, name: 'apple', color: 'green'),
      Fruit(id: 3, name: 'mango', color: 'green'),
    ];
    
    bool isFruitColorGreen(Fruit fruit){
      return fruit.color == 'green';
    }
    
    Fruit fruit;
    fruit = fruits.lastWhere(isFruitColorGreen);
    print(fruit); // Fruit{id: 3, name: mango, color: green}
    
    fruit = fruits.lastWhere((fruit) => fruit.color == 'green');
    print(fruit); // Fruit{id: 3, name: mango, color: green}
```

### 15. Where
The where function returns a new list containing all elements that match a given condition. You can apply it to list of objects as shown in the example below.

```dart
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
```
