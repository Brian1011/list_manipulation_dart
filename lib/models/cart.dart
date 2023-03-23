class Cart {
   int id;
   String title;
   int quantity;
   double unitPrice;

  Cart({
    required this.id,
    required this.title,
    required this.quantity,
    required this.unitPrice,
  });

  // to string
  @override
  String toString() {
    return 'Cart{id: $id, title: $title, quantity: $quantity, price: $unitPrice}';
  }
}