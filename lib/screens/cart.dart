import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../models/cart.dart';
import '../widgets/cart/cart_item.dart';
import '../widgets/drawer.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});
  double _allprice() {
    double alprice = 0;
    for (var Hoa in product) {
      alprice = alprice + ((Hoa.quantity * Hoa.price));
    }
    return alprice;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlowerShop'),
        backgroundColor: Colors.pink.shade100,
      ),
       drawer: const AppDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: product.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  Cart Hoa = product[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: CartItem(
                      flower: Hoa,
                    ),
                  );
                },
              ),
              Container(
                padding: const EdgeInsets.only(left: 200),
                child: Text(
                  "Tổng tiền: ${_allprice()}\$",
                  style: const TextStyle(
                      color: Colors.pinkAccent,
                      fontSize: 18,
                      fontWeight: FontWeight.w100),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 60,
        margin: const EdgeInsets.all(10),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: btncolor, // background
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
          onPressed: () {},
          child: const Center(
            child: Text(
              'THANH TOÁN',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}