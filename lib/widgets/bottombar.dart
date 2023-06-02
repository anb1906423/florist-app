import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      selectedIconTheme:
          const IconThemeData(color: Colors.pinkAccent, opacity: 1.0, size: 45),
      unselectedIconTheme:
          const IconThemeData(color: Colors.black, opacity: 0.5, size: 25),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.local_florist_rounded),
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.credit_card),
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          backgroundColor: Colors.white,
        ),
      ],
      onTap: (int index) {
        setState(() {
          selectedIndex = index;
        });
      },
    );
  }
}
