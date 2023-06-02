import 'package:get/get.dart';

import '../models/order.dart';
import '../services/order_service.dart';

final List<OrderItem> orderItems = [
  OrderItem(
    productId: '60a99c4a1f0ddc0015f6a604',
    quantity: 2,
    productName: 'Product 1',
    price: '100000',
    tempValue: '200000',
  ),
  OrderItem(
    productId: '60a99c4a1f0ddc0015f6a605',
    quantity: 1,
    productName: 'Product 2',
    price: '20000',
    tempValue: '20000',
  ),
];


class OrderDetailScreenController extends GetxController {
  final orderId = ''.obs;
  final order = Order(
          address: 'Long Biên, Hà Nội',
          customerName: 'Lê Văn Liêm',
          email: 'email@gmail.com',
          deliveryCharges: '20000',
          items: orderItems,
          id: '60a99c4a1f0ddc0015f6a603',
          total: '240000',
          phoneNumber: '0987873637',
          isPaid: false,
          userId: '60a99c4a1f0ddc0015f6a603')
      .obs;

  void getOrderDetail() async {
    try {
      final orderData = await OrderService.getOrderDetail(orderId.value);
      print(orderData);
      order.value = Order.fromJson(orderData);
    } catch (e) {
      // Handle error when unable to fetch order information
      print(e);
    }
  }
}
