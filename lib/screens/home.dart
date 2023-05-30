import 'package:flutter/material.dart';

import '../widgets/drawer.dart';
import '../widgets/home/body_home.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: buildAppBar(),
      appBar: AppBar(
        //title: const Text('FlowerShop'),
        backgroundColor: Colors.pink.shade100,
      ),
      drawer: const AppDrawer(),
      body: BodyScreen(),
    );
  }
}