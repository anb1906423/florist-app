import 'package:flutter/material.dart';
import 'product_grid_title.dart';
import 'product_manager.dart';

class ProductsGrid extends StatelessWidget {
  final bool showFavorite;

  const ProductsGrid(this. showFavorite, {super.key});

  @override
  Widget build(BuildContext context) {
    final productsManager = ProductsManager();
    final products = showFavorite ? productsManager.favoriteItems : productsManager.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: products.length,
      itemBuilder: (ctx, i) => ProductGridTile(products[i]),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.5 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,

      ),
    );
  }
}