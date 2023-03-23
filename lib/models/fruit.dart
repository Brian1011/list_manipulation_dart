class Fruit {
  int id;
  String name;
  String color;
  Fruit({required this.id, required this.name, required this.color});

  // to string
  @override
  String toString() {
    return 'Fruit{id: $id, name: $name, color: $color}';
  }
}