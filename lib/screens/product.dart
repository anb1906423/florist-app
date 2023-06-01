import 'package:flutter/material.dart';
import '../widgets/cart/cart_manager.dart';
import '../widgets/drawer.dart';
import '../widgets/product/product_grid.dart';
import '../widgets/product/product_topright_badge.dart';
import 'cart.dart';

enum FilterOptions { favorite, all }

class ProductsOverviewScreen extends StatefulWidget {
  const ProductsOverviewScreen({super.key});
  @override
  State<ProductsOverviewScreen> createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  var _showOnlyFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlowerShop'),
        actions: <Widget>[
          buildProductFilterMenu(),
          buildShoppingCartIcon(),
        ],
        backgroundColor: Colors.pink.shade100,
      ),
      backgroundColor: Colors.pink.shade50,
      drawer: const AppDrawer(),
      body: ProductsGrid(_showOnlyFavorite),
    );
  }

  Widget buildShoppingCartIcon() {
    return TopRightBadge(
      data: CartManager().productCount,
      child: IconButton(
        icon: const Icon(
          Icons.shopping_cart,
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(CartScreen.routeName);
        },
      ),
    );
  }

  Widget buildProductFilterMenu() {
    return PopupMenuButton(
      onSelected: (FilterOptions selectedValue) {
        setState(() {
          if (selectedValue == FilterOptions.favorite) {
            _showOnlyFavorite = true;
          } else {
            _showOnlyFavorite = false;
          }
        });
      },
      icon: const Icon(
        Icons.more_vert,
      ),
      itemBuilder: (ctx) => [
        const PopupMenuItem(
          value: FilterOptions.favorite,
          child: Text('Hiện thị sản phẩm yêu thích'),
        ),
      ],
    );
  }
}
