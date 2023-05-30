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
      name: "Hoa hồng nữ hoàng",
      price: 30.01,
      images: 'assets/images/Lan.jpg',
      quantity: 1),
  CheckOutProduct(
      name: "Only rose 30",
      price: 39.50,
      images: 'assets/images/hoaly.jpg',
      quantity: 1),
  CheckOutProduct(
      name: "Only rose 30",
      price: 39.50,
      images: 'assets/images/hoaly.jpg',
      quantity: 1),
];