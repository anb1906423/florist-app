import 'package:flutter/material.dart';

import '../../models/product.dart';
import '../../screens/product_detail.dart';

class ProductGridTile extends StatelessWidget {
  const ProductGridTile(
    this.product, {
    super.key,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        footer: buildGridfooterBar(context),
        child: GestureDetector(
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(
                ProductDetailScreen.routeName,
                arguments: product.id,
              );
            },
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildGridfooterBar(BuildContext context) {
    return GridTileBar(
        backgroundColor: Colors.white,
        title: Column(
          children: <Widget>[
            const SizedBox(height: 5),
            Text(
              product.title,
              //textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Align(
              //alignment: Alignment.centerRight,
              child: Container(
                child: Text(
                  '\$${product.price}',
                  style: const TextStyle(
                    color: Color.fromARGB(255, 92, 92, 92),
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ],
        ),
        trailing: IconButton(
          icon: const Icon(
            Icons.shopping_cart,
          ),
          onPressed: () {
            print('Add item to cart');
          },
          color: Colors.pink.shade100,
        ));
  }
}