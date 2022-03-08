import 'package:flutter/material.dart';
import 'package:shop_app/Models/product_provider.dart';
import '../main_drawer.dart';
import '../Widgets/products_grid.dart';
import 'package:provider/provider.dart';

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
      appBar: AppBar(title: Text('Shop app'), centerTitle: true,
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
      ],),
      drawer: MainDrawer(),
      body: ProductsGrid(_showOnlyFavorite),
    );
  }
}
