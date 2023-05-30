import 'package:flutter/material.dart';

import '../widgets/checkout/checkout_detail.dart';
import '../widgets/checkout/checkout.dart';

class CheckOutBody extends StatelessWidget {
  const CheckOutBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
     body: SingleChildScrollView(
    
       child: Column(
          children: <Widget>[
            CheckOut(),
            CheckOutDetail()
          
          ],
       ),
     )
    );
  }
}