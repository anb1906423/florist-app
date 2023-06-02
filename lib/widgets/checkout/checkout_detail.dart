import 'package:flutter/material.dart';

import '../../models/checkout_product.dart';
import 'checkout_item.dart';

class CheckOutDetail extends StatelessWidget {
  const CheckOutDetail({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: product.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  CheckOutProduct Hoa = product[index];
                  return Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15, bottom: 12),
                    child: CheckOutItem(
                      flower: Hoa,
                    ),
                  );
                },
              ),
            ],
          ),
    );
  }
}