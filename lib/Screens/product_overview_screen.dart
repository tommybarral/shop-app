import 'package:flutter/material.dart';
import 'package:shop_app/Widgets/badge.dart';
import '../main_drawer.dart';
import '../Widgets/products_grid.dart';
import 'package:provider/provider.dart';
import '../Models/cart.dart';

enum FilterOptions {
  Favorite, All,
}

class ProductOverviewScreen extends StatefulWidget {

  static const routeName = '/product-overview';

  @override
  _ProductOverviewScreenState createState() => _ProductOverviewScreenState();
}

class _ProductOverviewScreenState extends State<ProductOverviewScreen> {

  bool _showOnlyFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop app'), centerTitle: true,
        actions: [
          PopupMenuButton(
            onSelected: (FilterOptions selectedValue) {
              setState(() {
                if (selectedValue == FilterOptions.Favorite) {
                  _showOnlyFavorite = true;
                } else {
                  _showOnlyFavorite = false;
                }
              });
            },
            icon: Icon(Icons.more_vert),
              itemBuilder: (_) => [
                PopupMenuItem(
                  child: Text('Only favorite'),
                  value: FilterOptions.Favorite,
                ),
                PopupMenuItem(
                  child: Text('Show all'),
                  value: FilterOptions.All,
                ),
              ],
            ),
          Consumer<Cart>(
            builder: (_, cartData, child2) => Badge(
              child: child2!,
              value: cartData.itemCount.toString(),
          ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart),
            ),
          ),
        ],
      ),
      drawer: MainDrawer(),
      body: ProductsGrid(_showOnlyFavorite),
    );
  }
}
