import 'package:flutter/material.dart';
import '../widgets/drawer.dart';
import '../widgets/checkout/checkout_detail.dart';
import '../widgets/checkout/checkout.dart';

class CheckOutBody extends StatelessWidget {
  const CheckOutBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ĐẶT HÀNG'),
          backgroundColor: Colors.pink.shade100,
        ),
        drawer: const AppDrawer(),
        body: const SingleChildScrollView(
          child: Column(
            children: <Widget>[CheckOut(), CheckOutDetail()],
          ),
        ));
  }
}
