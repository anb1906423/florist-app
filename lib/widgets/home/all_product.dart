import 'package:flutter/material.dart';

import '../../constants/constants.dart';
class All_ProductView extends StatelessWidget {
  const All_ProductView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          const SizedBox(width: 20),
          AllProduct(
            image: "assets/images/Tulip.jpg",
            title: "Hoa Tulip",
            price: 12.34,
            press: () {},
          ),
          const SizedBox(width: 20),
          AllProduct(
            image: "assets/images/Lan.jpg" ,
            title: "Hoa Lan",
            price: 15.02,
            press: () {},
          ),
          const SizedBox(width: 20),
          AllProduct(
            image: "assets/images/linhlan.jpg",
            title: "Hoa Linh Lan",
            price: 22.11,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class AllProduct extends StatelessWidget {
  const AllProduct({
    super.key, required this.image, required this.title, required this.price, required this.press,
  });

  final String image, title;
  final double price;

  final void Function()?  press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.42,
      child: Column(
        children: <Widget>[
          const SizedBox(height: 15),
          Image.asset(
              image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(10, 10),
                    blurRadius: 50,
                    spreadRadius: 25,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title\n",
                          style: Theme.of(context).textTheme.button,
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: Colors.pink.shade100),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}