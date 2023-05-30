import 'package:flutter/material.dart';

class FavoriteProductView extends StatelessWidget {
  const FavoriteProductView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          FavoriteProduct(
            image: "assets/images/hoahong.jpg",
            press: () {},
          ),

          FavoriteProduct(
            image: "assets/images/cuchoami.jpg",
            press: () {},
          ),

          FavoriteProduct(
            image: "assets/images/huongduong.jpg",
            press: () {},
          ),

          FavoriteProduct(
            image: "assets/images/hoaanhtuc.jpg",
            press: () {},
          ),

          FavoriteProduct(
            image: "assets/images/camtucau.jpg",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class FavoriteProduct extends StatelessWidget {
  const FavoriteProduct({
    super.key, required this.image, this.press,
  });
  final String image;
  final void Function()?  press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
          left: 20,
          top: 10,
          bottom: 10,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          // border: Border.all(
          //   width: 10,
          //   color: Colors.pink.shade50,
          // ),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}