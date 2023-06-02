class Order {
  late String id;
  late String userId;
  late List<OrderItem> items;
  late String total;
  final bool? isPaid;
  late String customerName;
  late String email;
  late String phoneNumber;
  late String address;
  late String deliveryCharges;
  late DateTime createdAt;
  late DateTime updatedAt;

  Order({
    required this.id,
    required this.userId,
    required this.items,
    required this.total,
    this.isPaid,
    required this.customerName,
    required this.email,
    required this.phoneNumber,
    required this.address,
    required this.deliveryCharges,
    DateTime? createdAt,
    DateTime? updatedAt,
  })  : createdAt = createdAt ?? DateTime.now(),
        updatedAt = updatedAt ?? DateTime.now();

  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
      id: json['id'],
      userId: json['user_id'],
      items: List<OrderItem>.from(
          json['items'].map((item) => OrderItem.fromJson(item))),
      total: json['total'],
      isPaid: json['isPaid'],
      customerName: json['customerName'],
      email: json['email'],
      phoneNumber: json['phoneNumber'],
      address: json['address'],
      deliveryCharges: json['deliveryCharges'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user_id': userId,
      'items': items.map((item) => item.toJson()).toList(),
      'total': total,
      'isPaid': isPaid,
      'customerName': customerName,
      'email': email,
      'phoneNumber': phoneNumber,
      'address': address,
      'deliveryCharges': deliveryCharges,
      'created_at': createdAt.toString(),
      'updated_at': updatedAt.toString(),
    };
  }
}

class OrderItem {
  late String productId;
  late int quantity;
  late String productName;
  late String price;
  final String? tempValue;

  OrderItem({
    required this.productId,
    required this.quantity,
    required this.productName,
    required this.price,
    this.tempValue,
  });

  factory OrderItem.fromJson(Map<String, dynamic> json) {
    return OrderItem(
      productId: json['product_id'],
      quantity: json['quantity'],
      productName: json['productName'],
      price: json['price'],
      tempValue: json['tempValue'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'product_id': productId,
      'quantity': quantity,
      'productName': productName,
      'price': price,
      'tempValue': tempValue,
    };
  }
}
