import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'all_product.dart';
import 'favorite_product.dart';
import 'header_searchbox.dart';
import 'text_product.dart';
import 'title_custom.dart';

class BodyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var product;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderScreen(size: size),
          TitleWithCustom(text: "Welcome  to FlowerShop !!"),
          TextProduct(text: "Tất cả sản phẩm"),
          All_ProductView(),
          const SizedBox(height: 15),
          TextProduct(text: "Loại hoa phổ biến"),
          FavoriteProductView(),
        ],
      ),
    );
  }
}