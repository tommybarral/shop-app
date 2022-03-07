import 'package:flutter/material.dart';
import '../main_drawer.dart';
import '../Widgets/products_grid.dart';


class ProductOverviewScreen extends StatelessWidget {

  static const routeName = '/product-overview';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Shop app'), centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
              Icons.shopping_bag,
              size: 30,
              color: Colors.white
          ),
        ),
      ],),
      drawer: MainDrawer(),
      body: ProductsGrid(),
    );
  }
}
