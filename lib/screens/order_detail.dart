import 'package:florist_app/widgets/black_line.dart';
import 'package:florist_app/widgets/order/info_item.dart';
import 'package:florist_app/widgets/order/line_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../controllers/order_controller.dart';
import '../models/order.dart';
import '../services/order_service.dart';

class OrderDetailScreen extends StatefulWidget {
  final String orderId;

  const OrderDetailScreen({Key? key, required this.orderId}) : super(key: key);

  @override
  _OrderDetailScreenState createState() => _OrderDetailScreenState();
}

class _OrderDetailScreenState extends State<OrderDetailScreen> {
  final OrderDetailScreenController _controller =
      Get.put(OrderDetailScreenController());

  @override
  void initState() {
    super.initState();
    _controller.orderId.value = widget.orderId;
    _controller.getOrderDetail();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Detail'),
        backgroundColor: Colors.pink[100],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Obx(
          () {
            final order = _controller.order.value;
            // print(order);

            if (order == null) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            return Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                        padding: EdgeInsets.only(bottom: 16),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            infoItem(
                                '#${order.id ?? ""}',
                                DateFormat('dd MMM, yyyy')
                                    .format(order.createdAt),
                                titleFontWeight: FontWeight.bold,
                                valueFontWeight: FontWeight.normal),
                            infoItem("Địa chỉ", '${order.address ?? ""}',
                                titleFontWeight: FontWeight.normal,
                                valueFontWeight: FontWeight.bold),
                            infoItem(
                                "Khách hàng", '${order.customerName ?? ""}',
                                titleFontWeight: FontWeight.normal,
                                valueFontWeight: FontWeight.bold),
                          ],
                        )),
                    blackLineWidget(),
                    ListView.separated(
                      shrinkWrap: true,
                      padding: EdgeInsets.only(bottom: 6),
                      physics: ClampingScrollPhysics(),
                      itemCount: order.items.length + 4,
                      // separatorBuilder: (context, index) => Divider(),
                      separatorBuilder: (context, index) =>
                          SizedBox(height: 0),
                      itemBuilder: (context, index) {
                        if (index < order.items.length) {
                          final item = order.items[index];
                          double price = double.parse(item.price);

                          return lineItemWidget(
                            item.productName,
                            price,
                            showQuantity: true,
                            quantity: item.quantity,
                          );
                        } else if (index == order.items.length) {
                          // Hiển thị tổng tiền hàng
                          return blackLineWidget();
                        } else if (index == order.items.length + 1) {
                          // Hiển thị phí vận chuyển
                          return lineItemWidget(
                            "Tổng tiền hàng",
                            double.parse(order.total),
                            showQuantity: false,
                          );
                        } else if (index == order.items.length + 2) {
                          return lineItemWidget(
                            "Phí vận chuyển",
                            double.parse(order.deliveryCharges),
                            showQuantity: false,
                          );
                        } else {
                          // Hiển thị tổng chi phí (tổng tiền hàng + phí vận chuyển)
                          double totalCost = double.parse(order.total) +
                              double.parse(order.deliveryCharges);
                          return lineItemWidget(
                            "Tổng chi phí",
                            totalCost,
                            showQuantity: false,
                            showIsPaid: true,
                            isPaid: order.isPaid,
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
