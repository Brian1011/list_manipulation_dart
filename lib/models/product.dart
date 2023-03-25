class Product {
  final int id;
  final String title;
  List<Price> currencyPrices;

  Product({
    required this.id,
    required this.title,
    required this.currencyPrices,
  });
}

class Price {
  final double value;
  final String currency;

  Price({
    required this.value,
    required this.currency,
  });
}