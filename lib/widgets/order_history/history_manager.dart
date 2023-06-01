import 'package:flutter/material.dart';

import '../../models/cart.dart';
import '../../models/order_history.dart';

class OrdersManager with ChangeNotifier {
  // void addOrder(List<CartItem> cartProducts, double total) async {
  //   _orders.insert(
  //     0,
  //     OrderItem(
  //       id: 'o${DateTime.now().toIso8601String()}',
  //       amount: total,
  //       products: cartProducts,
  //       dateTime: DateTime.now(),
  //     ),
  //   );
  //   notifyListeners();
  // }

  final List<OrderItem> _orders = [
    OrderItem(
      id: 'o1',
      amount: 59.98,
      products: [
        CartItem(
          id: 'c1',
          title: 'Tulip',
          price: 11.02,
          quantity: 2,
          imageUrl: "assets/images/Tulip.jpg",
        )
      ],
      dateTime: DateTime.now(),
    )
  ];

  int get orderCount {
    return _orders.length;
  }

  List<OrderItem> get orders {
    return [..._orders];
  }
}
