import 'package:http/http.dart' as http;
import 'dart:convert';

import '../models/order.dart';
import '../constants/api.dart';

class OrderService {
  Future<List<Order>> fetchOrders() async {
    final response = await http.get(Uri.parse(API.getOrderList()));

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);

      List<Order> orders = [];
      for (var item in jsonData) {
        Order order = Order(
          id: item['id'],
          userId: item['userId'],
          items: item['items'],
          total: item['total'],
          isPaid: item['isPaid'],
          customerName: item['customerName'],
          email: item['email'],
          phoneNumber: item['phoneNumber'],
          address: item['address'],
          deliveryCharges: item['deliveryCharges'],
        );
        orders.add(order);
      }

      return orders;
    } else {
      throw Exception('Failed to fetch orders');
    }
  }

  static Future<Map<String, dynamic>> getOrderDetail(String orderId) async {

    try {
      final response = await http.get(Uri.parse(API.getOrderDetail(orderId)));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        return data as Map<String, dynamic>;
      } else {
        throw Exception(
            'Failed to get order. StatusCode: ${response.statusCode}');
      }
    } catch (e) {
      print(e);
      throw Exception('Error: $e');
    }
  }
}
