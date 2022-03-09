import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Models/product.dart';
import '../Screens/product_detail_screen.dart';
import '../Models/cart.dart';

class ProductItem extends StatelessWidget {

  /*
  final String id;
  final String title;
  final String imageUrl;
  ProductItem(this.id, this.title, this.imageUrl);
   */

  @override
  Widget build(BuildContext context) {

    final loadedProducData = Provider.of<Product>(context);
    final cartData = Provider.of<Cart>(context);

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        footer: GridTileBar(
          backgroundColor: Colors.black54,
          leading: IconButton(
            icon: Icon(loadedProducData.isFavorite ? Icons.favorite : Icons.favorite_border),
            color: Theme.of(context).colorScheme.primary,
            onPressed: () {
              loadedProducData.toogleFavoriteStatus();
            },
          ),
          title: Text(loadedProducData.title, textAlign: TextAlign.center),
          trailing: IconButton(
            icon: Icon(Icons.add_shopping_cart),
            color: Theme.of(context).colorScheme.primary,
            onPressed: () {
              cartData.addItem(loadedProducData.id, loadedProducData.title, loadedProducData.price);
            },
          ),
        ),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(ProductDetailScreen.routeName, arguments: loadedProducData.id);
            },
            child: Image.network(loadedProducData.imageUrl, fit: BoxFit.cover),
          ),
      ),
    );
  }
}
