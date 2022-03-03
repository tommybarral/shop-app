import 'package:flutter/material.dart';
import 'package:shop_app/main_drawer.dart';

class ProductDetailScreen extends StatelessWidget {

  static const routeName = '/product-details';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('name product'),),
      drawer: MainDrawer(),
      body: Center(child: Text('Product details here'),),
    );
  }
}
