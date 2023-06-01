class CheckOutProduct {
  final String? id;
  final String name;
  final double price;
  final String images;
  final double quantity;

  CheckOutProduct({
    this.id,
    required this.name,
    required this.price,
    required this.images,
    required this.quantity,
  });

  CheckOutProduct copyWith({
    String? id,
    String? name,
    String? description,
    double? price,
    String? images,
    double? quantity,
  }) {
    return CheckOutProduct(
      id: id ?? this.id,
      name: name ?? this.name,
      price: price ?? this.price,
      images: images ?? this.images,
      quantity: quantity ?? this.quantity,
    );
  }
}

List product = [
  CheckOutProduct(
      name: "Hoa Tulip",
      price: 11.02,
      images: 'assets/images/Tulip.jpg',
      quantity: 1),
  CheckOutProduct(
      name: "Hoa Linh Lan",
      price: 25.71,
      images: 'assets/images/linhlan.jpg',
      quantity: 1),
  CheckOutProduct(
      name: "Hoa Lan",
      price: 15.20,
      images: 'assets/images/Lan.jpg',
      quantity: 1),
];