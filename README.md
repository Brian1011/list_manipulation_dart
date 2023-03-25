# List Manipulation Functions in Dart

## Table of Contents
1. [Introduction](#introduction) 
2. [Getting Started](#getting-started)
3. [List Manipulation Functions](#list-manipulation-functions)
    - [1. Add](#1-add)
    - [2. Insert](#2-insert)
    - [3. AddAll](#3-addall)
    - [4. Remove](#4-remove)
    - [5. RemoveAt](#5-removeat)
    - [6. RemoveLast](#6-removelast)
    - [7. RemoveRange](#7-removerange)
    - [8. Clear](#8-clear)
    - [9. Shuffle](#9-shuffle)
    - [10. Sublist](#10-sublist)
    - [11. Sort](#11-sort)
    - [12. Map](#12-map)
    - [13. FirstWhere](#13-firstwhere)
    - [14. LastWhere](#14-lastwhere)
    - [15. Where](#15-where)
    - [16. WhereType](#16-wheretype)
    - [17. ForEach](#17-foreach)
    - [18. Fold](#18-fold)
    - [19. Reduce](#19-reduce)
    - [20. Any](#20-any)
    - [21. Every](#21-every)
    - [22. Expand](#22-expand)
4. [Contributing](#contributing)
5. [Author(s) and Contributor(s)](#authors)

## Introduction
This is a repository of Dart list manipulation functions created for easy reference. It contains a comprehensive list of functions that can be used to manipulate lists in Dart. 

These functions are useful for anyone who works with lists frequently and wants to quickly look up available options. The repository serves as a handy reference guide, allowing developers to easily find the function they need without having to search for it elsewhere. 

By structuring these functions in a single location, it makes it easier to keep track of them and utilize them effectively in projects.

A brief explanation of each function is provided along with a dart code example. Incase of any issues, please raise an issue in the repository and I will get back to you as soon as possible.

A Youtube playlist with some of the functions explained is available [here](https://www.youtube.com/watch?v=7ksgb4pqTao&list=PL50P5JG2-X3rz-GsihJ4PNncXBAv4NA8Z).

If you find this repository useful, please consider giving it a star.

## Getting Started
All code examples are available in the `main.dart` file.
The code examples have been tested on Dart 2.19.2

Run code using the following command:
```dart main.dart```
 
## List Manipulation Functions
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
- `whereType`: Returns a new list containing only the elements that are of a specified type.
- `forEach`: Executes a function for each element in the list.
- `fold`: Accumulates a single value by applying a function to each element in the list.
- `reduce`: Reduces the list to a single value by applying a function to each element.
- `any`: Checks if at least one element in the list satisfies a specified condition.
- `every`: Checks if all elements in the list satisfy a specified condition.
- `expand`: Expand keyword applies a function to each element in the list and returns a new list with the results.

### 1. Add
The add function adds an element to the end of a list.

```dart
    List<int> oddNumbers = [1, 3, 5];
    oddNumbers.add(7);
    print(oddNumbers); // [1, 3, 5, 7]
```

**[⬆ Back to top](#table-of-contents)**

### 2. Insert
The insert function inserts an element at a specific index in a list.

```dart
    List<int> oddNumbers = [1, 3, 5];
    int position = 1;
    oddNumbers.insert(position, 2);
    print(oddNumbers); // [1, 2, 3, 5] 2, 3, 5]
```
**[⬆ Back to top](#table-of-contents)**

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
**[⬆ Back to top](#table-of-contents)**

### 4. Remove
The remove function removes the first occurrence of an element from a list.

```dart
    List<int> oddNumbers = [1, 3, 5];
    oddNumbers.remove(3);
    print(oddNumbers); // [1, 5]
```
**[⬆ Back to top](#table-of-contents)**

### 5. RemoveAt
The removeAt function removes an element at a specific index in a list.

```dart
    List<int> oddNumbers = [1, 3, 5];
    int position = 1;
    oddNumbers.removeAt(position);
    print(oddNumbers); // [1, 5]
```
**[⬆ Back to top](#table-of-contents)**

### 6. RemoveLast
The removeLast function removes the last element from a list.

```dart
    List<int> oddNumbers = [1, 3, 5];
    oddNumbers.removeLast();
    print(oddNumbers); // [1, 3]
```
**[⬆ Back to top](#table-of-contents)**

### 7. RemoveRange
The removeRange function removes a range of elements from a list.

```dart
    List<int> oddNumbers = [1, 3, 5, 7];
    int start = 0;
    int end = 1;
    oddNumbers.removeRange(start, end);
    print(oddNumbers); // [5, 7]
```
**[⬆ Back to top](#table-of-contents)**

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
**[⬆ Back to top](#table-of-contents)**


### 9. Shuffle
The shuffle function randomly shuffles the elements in the list.

```dart
    List<int> oddNumbers = [1, 3, 5];
    oddNumbers.shuffle();
    print(oddNumbers); // [5, 1, 3]
```
**[⬆ Back to top](#table-of-contents)**

### 10. Sublist
The sublist function returns a new list containing a specified range of elements from an existing list.

```dart
    List<int> oddNumbers = [1, 3, 5, 7];
    int start = 1;
    int end = 3;
    List<int> subList = oddNumbers.sublist(start, end);
    print(subList); // [3, 5]
```
**[⬆ Back to top](#table-of-contents)**

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
**[⬆ Back to top](#table-of-contents)**

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
**[⬆ Back to top](#table-of-contents)**

### 13. FirstWhere
The firstWhere function returns the first element in the list that matches a given condition. 

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
**[⬆ Back to top](#table-of-contents)**

### 14. LastWhere
The lastWhere function returns the last element in the list that matches a given condition. 

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
**[⬆ Back to top](#table-of-contents)**

### 15. Where
The where function returns a new list containing all elements that match a given condition. 

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
**[⬆ Back to top](#table-of-contents)**

### 16. WhereType
The whereType function returns a new list containing all elements that match a given type. 

```dart
    List<dynamic> list = [1, 'two', 3, 'four', 5];
    List<int> numbers = list.whereType<int>().toList();
    print(numbers); // [1, 3, 5]
```
**[⬆ Back to top](#table-of-contents)**

### 17. ForEach
The forEach function applies a function to each element in the list. 

```dart
    List<int> oddNumbers = [1, 3, 5];
    oddNumbers.forEach((number) => print(number)); 
    // 1
    // 3
    // 5
    
    List<Fruit> fruits = [
    Fruit(id: 1, name: 'banana', color: 'yellow'),
    Fruit(id: 2, name: 'apple', color: 'red'),
    Fruit(id: 3, name: 'orange', color: 'orange'),
    ];
    
    fruits.forEach((fruit) {
    print(fruit.name.toUpperCase());
    });
    
    // BANANA
    // APPLE
    // ORANGE
```
**[⬆ Back to top](#table-of-contents)**

### 18. Fold
The fold function combines all elements in the list into a single value by repeatedly applying a function. 

```dart
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
    
    double initialUnitPrice = 0.0;
    double total = cartItems.fold(initialUnitPrice, (previousValue, element) => previousValue + (element.quantity * element.unitPrice));
    print(total); // 220.0
```
**[⬆ Back to top](#table-of-contents)**

### 19. Reduce
The reduce function combines all elements in the list into a single value by repeatedly applying a function. 


The difference between fold and reduce is that fold takes an initial value as a parameter, while reduce does not. Reduce uses the first element in the list as the initial value.

```dart
    List<int> oddNumbers = [1, 3, 5];
    int sum = oddNumbers.reduce((value, element) => value + element);
    print(sum); // 9
    
    List<Fruit> fruits = [
      Fruit(id: 1, name: 'banana', color: 'yellow'),
      Fruit(id: 2, name: 'apple', color: 'red'),
      Fruit(id: 3, name: 'orange', color: 'blue'),
    ];
    
    String fruitNames = fruits.reduce((value, element) => value..name += ', ${element.name}').name;
    print(fruitNames); // banana, apple, orange
```
**[⬆ Back to top](#table-of-contents)**

### 20. Every
The every function returns true if all elements in the list match a given condition. 

```dart
    List<int> oddNumbers = [1, 3, 5];
    bool areAllOddNumbersGreaterThan2 = oddNumbers.every((number) => number > 2);
    print(areAllOddNumbersGreaterThan2); // false
    
    List<Fruit> fruits = [
      Fruit(id: 1, name: 'banana', color: 'yellow'),
      Fruit(id: 2, name: 'apple', color: 'red'),
      Fruit(id: 3, name: 'orange', color: 'orange'),
    ];
    
    bool areAllFruitsOrange = fruits.every((fruit) => fruit.color == 'orange');
    print(areAllFruitsOrange); // 
```
**[⬆ Back to top](#table-of-contents)**

### 21. Any
The any function returns true if at least one element in the list matches a given condition. 

```dart
    List<int> oddNumbers = [1, 3, 5];
    bool isAnyOddNumberGreaterThan2 = oddNumbers.any((number) => number > 2);
    print(isAnyOddNumberGreaterThan2); // true
    
    List<Fruit> fruits = [
      Fruit(id: 1, name: 'banana', color: 'yellow'),
      Fruit(id: 2, name: 'apple', color: 'red'),
      Fruit(id: 3, name: 'orange', color: 'orange'),
    ];
    
    bool isAnyFruitOrange = fruits.any((fruit) => fruit.color == 'orange');
    print(isAnyFruitOrange); // true
```
**[⬆ Back to top](#table-of-contents)**

### 22. Expand
The expand function expands each element of a list into zero or more elements. 

```dart
    List<int> oddNumbers = [1, 3, 5];
    List<int> oddNumbersDoubled = oddNumbers.expand((number) => [number, number * 2]).toList();
    print(oddNumbersDoubled); // [1, 2, 3, 6, 5, 10]
    
    List<Fruit> fruits = [
      Fruit(id: 1, name: 'banana', color: 'yellow'),
      Fruit(id: 2, name: 'apple', color: 'red'),
      Fruit(id: 3, name: 'orange', color: 'orange'),
    ];
    
    List<String> fruitNames = fruits.expand((fruit) => [fruit.name, fruit.color]).toList();
    print(fruitNames); // [banana, yellow, apple, red, orange, orange]
    
    List<Cart> cartItems = [
      Cart(id: 1, title: 'banana', quantity: 3, unitPrice: 10),
      Cart(id: 2, title: 'apple', quantity: 2, unitPrice: 20),
      Cart(id: 3, title: 'orange', quantity: 5, unitPrice: 30),
    ];
    
    List<String> cartItemsWithTotal = cartItems.expand((cartItem) => [cartItem.title, (cartItem.quantity * cartItem.unitPrice).toString()]).toList();
    print(cartItemsWithTotal); // [banana, 30, apple, 40, orange, 150]
    
    // you can use it for more complex cases here are some examples
    List<List<int>> listOfLists = [[1, 2], [3, 4], [5, 6]];
    List<int> flattenedList = listOfLists.expand((list) => list).toList();
    print(flattenedList); // [1, 2, 3, 4, 5, 6]
    
    List<Product> products = [
      Product(id: 1, title: 'banana', currencyPrices: [Price(currency: "USD", value: 4.00), Price(currency: "EUR", value: 3.00), Price(currency: "BTC", value: 0.002)]),
      Product(id: 2, title: 'apple', currencyPrices: [Price(currency: "USD", value: 5.00), Price(currency: "EUR", value: 4.00), Price(currency: "BTC", value: 0.003)]),
      Product(id: 3, title: 'orange', currencyPrices: [Price(currency: "USD", value: 6.00), Price(currency: "EUR", value: 5.00), Price(currency: "BTC", value: 0.004)]),
    ];
    
    // get list of all product prices where currency is BTC
    List<Price> productBTCPrices = products.expand((product) => product.currencyPrices.where((price) => price.currency == "BTC")).toList();
    print(productBTCPrices); 
    // [Price(currency: BTC, value: 0.002), Price(currency: BTC, value: 0.003), Price(currency: BTC, value: 0.004)]
    
    // list of all product prices
    List<Price> allProductPrices = products.expand((product) => product.currencyPrices).toList();
    print(allProductPrices); 
    // [Price(currency: USD, value: 4.0), Price(currency: EUR, value: 3.0), Price(currency: BTC, value: 0.002), Price(currency: USD, value: 5.0), Price(currency: EUR, value: 4.0), Price(currency: BTC, value: 0.003), Price(currency: USD, value: 6.0), Price(currency: EUR, value: 5.0), Price(currency: BTC, value: 0.004)]
    
    // list of all products with their respective currency prices
    List<String> productPrices = products.expand((product) => product.currencyPrices.map((price) => '${product.title} price in ${price.currency} is ${price.value}')).toList();
    print(productPrices); 
    // [banana price in USD is 4.0, banana price in EUR is 3.0, banana price in BTC is 0.002, apple price in USD is 5.0, apple price in EUR is 4.0, apple price in BTC is 0.003, orange price in USD is 6.0, orange price in EUR is 5.0, orange price in BTC is 0.004]
```
**[⬆ Back to top](#table-of-contents)**

## Contributing

Pull requests are welcome. For major changes, please open an issue first
to discuss what you would like to change.

Please make sure you test as appropriately.

## Authors and Contributors
#### 1. Brian Mutinda
[Github - brian1011](https://github.com/Brian1011)

[Twitter - brian_1011_dev](https://twitter.com/BrianMutinda)
