import 'package:florist_app/screens/checkout.dart';
import 'package:florist_app/widgets/checkout/checkout.dart';
import 'package:flutter/material.dart';
import '../widgets/cart/cart_item.dart';
import '../widgets/cart/cart_manager.dart';
import '../widgets/drawer.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/cart';

  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = CartManager();
    return Scaffold(
      appBar: AppBar(
        title: const Text('GIỎ HÀNG'),
        backgroundColor: Colors.pink.shade100,
      ),
      drawer: const AppDrawer(),
      body: Column(
        children: <Widget>[
          buildCartSummary(cart, context),
          Expanded(
            child: buildCartDetails(cart),
          ),
          buildPayment(context),
          SizedBox( height: 50,),
        ],
      ),
    );
  }

  Widget buildCartDetails(CartManager cart) {
    return ListView(
      children: cart.productEntries
          .map(
            (entry) => CartItemCard(
              productId: entry.key,
              cardItem: entry.value,
            ),
          )
          .toList(),
    );
  }

  Widget buildPayment(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding:
            const EdgeInsets.only(top: 15, bottom: 15, left: 70, right: 70),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: Colors.pink.shade100,
        //minimumSize: Size(double.infinity, 50)
      ),
      onPressed: () =>  Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => CheckOutBody())),
      // onPressed: () {
      //   final cart = context.read<CartManager>();
      //   cart.addItem(product);
      //   ScaffoldMessenger.of(context)
      //     ..hideCurrentSnackBar()
      //     ..showSnackBar(
      //       SnackBar(
      //         content: const Text(
      //           'Sản phẩm được thêm vào giỏ hàng',
      //         ),
      //         duration: const Duration(seconds: 2),
      //         action: SnackBarAction(
      //           label: 'Trở lại',
      //           onPressed: () {
      //             cart.removeSingleItem(product.id!);
      //           },
      //         ),
      //       ),
      //     );
      // },
      child: const Text(
        "Đặt Hàng",
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
      
    );
    
  }

  Widget buildCartSummary(CartManager cart, BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Text(
              'Tổng:',
              style: TextStyle(fontSize: 20),
            ),
            const Spacer(),
            Chip(
              label: Text(
                '\$${cart.totalAmount}',
                style: TextStyle(
                  color: Theme.of(context).primaryTextTheme.titleLarge?.color,
                  fontSize: 16,
                ),
              ),
              backgroundColor: Theme.of(context).primaryColor,
            ),
            // TextButton(
            //   // onPressed: cart.totalAmount <= 0
            //   // ? null
            //   // : () {
            //   //   context.read<OrdersManager>().addOrder(
            //   //     cart.products,
            //   //     cart.totalAmount,
            //   //   );
            //   //   cart.clear();
            //   // },
            //   onPressed: () {
            //     print("Them vao ddon hang");
            //   },
            //   style: TextButton.styleFrom(
            //     textStyle: TextStyle(color: Theme.of(context).primaryColor),
            //   ),
            //   child: const Text('Thanh Toán')
            // ),
          ],
        ),
      ),
    );
  }
}
