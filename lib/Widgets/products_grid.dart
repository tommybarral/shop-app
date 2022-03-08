import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Models/product_provider.dart';
import './product_item.dart';

class ProductsGrid extends StatelessWidget {

  final bool showFavs;

  ProductsGrid(this.showFavs);

  @override
  Widget build(BuildContext context) {

    final productsData = Provider.of<ProductProvider>(context);
    final products = showFavs ? productsData.favoriteItems : productsData.items;

    return GridView.builder(
      padding: EdgeInsets.all(10.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: products.length,
      itemBuilder:  (context, index) => ChangeNotifierProvider.value(
        // recommended to use .value for a widget
        value: products[index],
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
