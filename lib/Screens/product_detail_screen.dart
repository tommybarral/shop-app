import 'package:flutter/material.dart';
import 'package:shop_app/Models/product_provider.dart';
import '../main_drawer.dart';
import '../Models/product_provider.dart';
import 'package:provider/provider.dart';

class ProductDetailScreen extends StatelessWidget {

  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {

    final productId = ModalRoute.of(context).settings.arguments as String;
    final loadedProduct = Provider.of<ProductProvider>(context, listen: false).findById(productId);

    return Scaffold(
      appBar: AppBar(title: Text(loadedProduct.title), centerTitle: true,),
      drawer: MainDrawer(),
      body: Center(child: Text('Product details here'),),
    );
  }
}
