class Cart {
  final String? id;
  final String title;
  final double price;
  final String imageUrl;
  final double quantity;
 
  Cart({
    this.id, 
    required this.title,
    required this.price,
    required this.imageUrl,
    required this.quantity,
    isFavorite = false,
  });

  Cart copyWith({
    String? id,
    String? title,
    String? description,
    double? price,
    String? imageUrl,
    double? quantity,
  }) {
    return Cart(
      id: id ?? this.id,
      title: title ?? this.title,
      price: price ?? this.price,
      imageUrl: imageUrl ?? this.imageUrl,
      quantity: quantity ?? this.quantity,
    );
  }
}

List product = [
  Cart(
      title: "Hoa hồng nữ hoàng",
      price: 30.01,
      imageUrl: 'assets/images/hoaly.jpg',
      quantity: 1),
  Cart(
      title: "Only rose 30",
      price: 39.50,
      imageUrl: 'assets/images/hoaly.jpg',
      quantity: 1),
       Cart(
      title: "Only rose 30",
      price: 39.50,
      imageUrl: 'assets/images/hoaly.jpg',
      quantity: 1),
];