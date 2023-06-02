import 'package:florist_app/screens/cart.dart';
import 'package:florist_app/screens/order_history.dart';
import 'package:florist_app/screens/profile.dart';
import 'package:flutter/material.dart';

import '../screens/home.dart';
import '../screens/product.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.pink.shade100,
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 100,
                    width: 100,
                    margin: EdgeInsets.only(
                      top: 50,
                      bottom: 20,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://cdn5.vectorstock.com/i/1000x1000/34/29/flower-shop-logo-template-with-rose-element-vector-18503429.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Text(
                    'FlowerShop',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            iconColor: Colors.pink.shade100,
            title: const Text('Trang chủ'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.shop),
            iconColor: Colors.pink.shade100,
            title: const Text('Sản phẩm'),
            onTap: () {
              // Navigator.of(context).pushReplacementNamed("/");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductsOverviewScreen()),
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.shopping_cart), iconColor: Colors.pink.shade100,
            title: const Text('Giỏ Hàng'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(CartScreen.routeName);
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.update), iconColor: Colors.pink.shade100,
            title: const Text('Lịch Sử Đơn Hàng'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(OrdersScreen.routeName);
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.people_alt), iconColor: Colors.pink.shade100,
            title: const Text('Trang cá nhân'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(ProfileScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
