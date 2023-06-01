import 'package:flutter/material.dart';

import '../widgets/drawer.dart';
import '../widgets/order_history/history_item.dart';
import '../widgets/order_history/history_manager.dart';

class OrdersScreen extends StatelessWidget {
  static const routeName = '/orders';
  
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print('building orders');
    final ordersManager = OrdersManager();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lịch Sử Đơn Hàng'),
        backgroundColor: Colors.pink.shade100,
      ),
      drawer: const AppDrawer(),

      body: ListView.builder(
        itemCount: ordersManager.orderCount,
        itemBuilder: (ctx, i) => OrderItemCard(ordersManager.orders[i]),
        ),
      // body: Consumer<OrdersManager>(
      //   builder: (ctx, ordersManager, child) {
      //     return ListView.builder(
      //       itemCount: ordersManager.orderCount,
      //       itemBuilder: (ctx, i) => OrderItemCard(ordersManager.orders[i]),
      //     );
      //   },
      // ),
    );
  }
}