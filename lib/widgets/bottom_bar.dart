import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../screens/cart.dart';
import '../screens/home.dart';
import '../screens/product.dart';
import '../screens/profile.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: [
          HomeScreen(),
          ProductsOverviewScreen(),
          CartScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        decoration: BoxDecoration(
          color: Colors.pink.shade100,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 6,
              offset: Offset(0, -3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              color: selectedIndex == 0
                  ? Colors.pinkAccent
                  : Colors.black.withOpacity(0.5),
              onPressed: () {
                setState(() {
                  selectedIndex = 0;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.local_florist_rounded),
              color: selectedIndex == 1
                  ? Colors.pinkAccent
                  : Colors.black.withOpacity(0.5),
              onPressed: () {
                setState(() {
                  selectedIndex = 1;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.shopping_cart),
              color: selectedIndex == 2
                  ? Colors.pinkAccent
                  : Colors.black.withOpacity(0.5),
              onPressed: () {
                setState(() {
                  selectedIndex = 2;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.person),
              color: selectedIndex == 3
                  ? Colors.pinkAccent
                  : Colors.black.withOpacity(0.5),
              onPressed: () {
                setState(() {
                  selectedIndex = 3;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
