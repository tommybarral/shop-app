import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Models/product_provider.dart';
import './product_item.dart';
import '../Models/product.dart';

class ProductsGrid extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final productsData = Provider.of<ProductProvider>(context);
    final products = productsData.items;

    return GridView.builder(
      padding: EdgeInsets.all(10.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: products.length,
      itemBuilder:  (context, index) => ChangeNotifierProvider(
        create: (ctx) => products[index],
        child: ProductItem(
          /*
          PARSING DATA THANKS TO PROVIDER INSTEAD OF CONSTRUCTOR
          products[index].id,
          products[index].title,
          products[index].imageUrl,
           */
        ),
      ),
    );
  }
}
