import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Widget lineItemWidget(
  String title,
  double price, {
  bool showQuantity = true,
  int quantity = 1,
  bool? isPaid,
  bool showIsPaid = false,
}) {
  String paidStatus = isPaid == true ? "Đã thanh toán" : "Chưa thanh toán";

  return ListTile(
    contentPadding: EdgeInsets.zero,
    title: Text(
      title,
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    subtitle: showQuantity ? Text('x$quantity') : null,
    trailing: Text(
      '${NumberFormat.decimalPattern().format(price)} đ${showIsPaid ? "\n$paidStatus" : ""}',
      style: TextStyle(fontWeight: FontWeight.bold),
      textAlign: TextAlign.right,
    ),
  );
}
